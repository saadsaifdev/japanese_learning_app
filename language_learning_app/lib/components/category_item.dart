import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    this.text,
    this.color,
    this.onTap,
  });

  final String? text;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(29),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}