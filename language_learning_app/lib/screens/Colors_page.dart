import 'package:flutter/material.dart';
import 'package:language_learning_app/components/List_item.dart';
import 'package:language_learning_app/models/Item_models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> ColoesList = const [
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
        centerTitle: true,
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: ColoesList.length,
        itemBuilder: (context, index) {
          return Item(color: Colors.purple, item: ColoesList[index]);
        },
      ),
    );
  }
}
