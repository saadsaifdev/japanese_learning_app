import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/core/audio_service.dart';
import 'package:language_learning_app/core/pressable_scale.dart';
import 'package:language_learning_app/core/theme.dart';
import 'package:language_learning_app/models/item_model.dart';

class ItemTile extends StatefulWidget {
  const ItemTile({
    super.key,
    required this.item,
    required this.color,
    required this.animationDelay,
    this.showImage = true,
  });

  final ItemModel item;
  final Color color;
  final bool showImage;
  final Duration animationDelay;

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool _isPlaying = false;
  bool _isVisible = false;

  Future<void> _onPlay() async {
    HapticFeedback.lightImpact();
    setState(() => _isPlaying = true);
    await AudioService.instance.playAsset(widget.item.sound);
    if (mounted) {
      await Future<void>.delayed(const Duration(milliseconds: 180));
      setState(() => _isPlaying = false);
    }
  }

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(widget.animationDelay, () {
      if (mounted) {
        setState(() => _isVisible = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeInOut,
      offset: _isVisible ? Offset.zero : const Offset(0, 0.12),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeInOut,
        opacity: _isVisible ? 1 : 0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.42),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      widget.color.withValues(alpha: 0.82),
                      widget.color.withValues(alpha: 0.72),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.deepIndigo.withValues(alpha: 0.16),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      if (widget.showImage && widget.item.img != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            color: Colors.white.withValues(alpha: 0.18),
                            width: 74,
                            height: 74,
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(
                              widget.item.img!,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      if (widget.showImage && widget.item.img != null)
                        const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.item.jpname,
                              style: AppTheme.japaneseStyle(
                                englishSize: 16,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              widget.item.enname,
                              style: AppTheme.englishStyle(
                                size: 16,
                                color: Colors.white.withValues(alpha: 0.92),
                                weight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      PressableScale(
                        onTap: _onPlay,
                        borderRadius: BorderRadius.circular(999),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 180),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _isPlaying
                                ? AppTheme.vermilion
                                : Colors.white.withValues(alpha: 0.18),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.4),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.play_circle_rounded,
                              color: _isPlaying ? Colors.white : Colors.white70,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
