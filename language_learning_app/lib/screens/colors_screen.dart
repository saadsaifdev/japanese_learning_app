import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_tile.dart';
import 'package:language_learning_app/core/zen_pattern_background.dart';
import 'package:language_learning_app/models/item_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({
    super.key,
    required this.categoryHeroTag,
    required this.categoryIcon,
  });
  final String categoryHeroTag;
  final IconData categoryIcon;
  final List<ItemModel> colorsList = const [
    ItemModel(
        sound: "sounds/colors/black.wav",
        img: "assets/images/colors/color_black.png",
        jpname: "Burakku",
        enname: "Black"),
    ItemModel(
        sound: "sounds/colors/brown.wav",
        img: "assets/images/colors/color_brown.png",
        jpname: "Chairo",
        enname: "Brown"),
    ItemModel(
        sound: "sounds/colors/dusty yellow.wav",
        img: "assets/images/colors/color_dusty_yellow.png",
        jpname: "Hokori Ppoi Kiiro",
        enname: "Dusty Yellow"),
    ItemModel(
        sound: "sounds/colors/gray.wav",
        img: "assets/images/colors/color_gray.png",
        jpname: "Gure",
        enname: "Gray"),
    ItemModel(
        sound: "sounds/colors/green.wav",
        img: "assets/images/colors/color_green.png",
        jpname: "Midori",
        enname: "Green"),
    ItemModel(
        sound: "sounds/colors/red.wav",
        img: "assets/images/colors/color_red.png",
        jpname: "Aka",
        enname: "Red"),
    ItemModel(
        sound: "sounds/colors/white.wav",
        img: "assets/images/colors/color_white.png",
        jpname: "Shiroi",
        enname: "White"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: categoryHeroTag,
              child: Icon(
                categoryIcon,
                color: const Color(0xFF8E24AA),
              ),
            ),
            const SizedBox(width: 8),
            const Text('Colors'),
          ],
        ),
      ),
      body: SafeArea(
        child: ZenPatternBackground(
          child: ListView.builder(
            itemCount: colorsList.length,
            itemBuilder: (context, index) {
              return ItemTile(
                color: const Color(0xFF8E24AA),
                item: colorsList[index],
                animationDelay: Duration(milliseconds: 100 * index),
              );
            },
          ),
        ),
      ),
    );
  }
}
