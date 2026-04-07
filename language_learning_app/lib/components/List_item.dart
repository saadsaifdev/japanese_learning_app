import 'package:flutter/material.dart';
import 'package:language_learning_app/models/Item_models.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.item,
    required this.color,
    this.showImage = true,
  });

  final ItemModel item;
  final Color color;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: color,
      child: Row(
        children: [
          if (showImage)
            item.img == null
                ? SizedBox()
                : Container(
                    color: const Color(0xffFFF6DC),
                    child: Image.asset(item.img!),
                  ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    item.enname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              item.playsound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
