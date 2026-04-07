import 'package:flutter/material.dart';
import 'package:language_learning_app/components/List_item.dart';
import 'package:language_learning_app/models/Item_models.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        sound: "sounds/numbers/number_one_sound.mp3",
        img: "assets/images/numbers/number_one.png",
        jpname: "Ichi",
        enname: "One"),
    ItemModel(
        sound: "sounds/numbers/number_two_sound.mp3",
        img: "assets/images/numbers/number_two.png",
        jpname: "Ni",
        enname: "Tow"),
    ItemModel(
        sound: "sounds/numbers/number_three_sound.mp3",
        img: "assets/images/numbers/number_three.png",
        jpname: "San",
        enname: "Three"),
    ItemModel(
        sound: "sounds/numbers/number_four_sound.mp3",
        img: "assets/images/numbers/number_four.png",
        jpname: "Shi",
        enname: "Four"),
    ItemModel(
        sound: "sounds/numbers/number_five_sound.mp3",
        img: "assets/images/numbers/number_five.png",
        jpname: "Go",
        enname: "Five"),
    ItemModel(
        sound: "sounds/numbers/number_six_sound.mp3",
        img: "assets/images/numbers/number_six.png",
        jpname: "Roku",
        enname: "Six"),
    ItemModel(
        sound: "sounds/numbers/number_seven_sound.mp3",
        img: "assets/images/numbers/number_seven.png",
        jpname: "Sebun",
        enname: "Seven"),
    ItemModel(
        sound: "sounds/numbers/number_eight_sound.mp3",
        img: "assets/images/numbers/number_eight.png",
        jpname: "Hachi",
        enname: "eight"),
    ItemModel(
        sound: "sounds/numbers/number_nine_sound.mp3",
        img: "assets/images/numbers/number_nine.png",
        jpname: "Kyu",
        enname: "Nine"),
    ItemModel(
        sound: "sounds/numbers/number_ten_sound.mp3",
        img: "assets/images/numbers/number_ten.png",
        jpname: "Ju",
        enname: "Ten"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Item(
            color: Colors.orange,
            item: numbersList[index]);
        },
      ),
    );
  }
}