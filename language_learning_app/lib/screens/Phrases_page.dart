import 'package:flutter/material.dart';
import 'package:language_learning_app/components/List_item.dart';
import 'package:language_learning_app/models/Item_models.dart';

class Phrasespage extends StatelessWidget {
  const Phrasespage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jpname: "Kōdoku suru koto o wasurenaide kudasai",
      enname: "Don't forget to subscribe",
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_programming.wav",
      jpname: "Watashi wa puroguramingu ga daisukidesu",
      enname: "I love programming",
    ),
    ItemModel(
      sound: "sounds/phrases/programming_is_easy.wav",
      jpname: "Puroguramingu wa kantandesu",
      enname: "Programming is easy",
    ),
    ItemModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      jpname: "Doko ni iku no",
      enname: "Where are you going?",
    ),
    ItemModel(
      sound: "sounds/phrases/what_is_your_name.wav",
      jpname: "Namae wa nan desu ka",
      enname: "What is your name?",
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_programming.wav",
      jpname: "Watashi wa anime ga daisukidesu",
      enname: "I love anime",
    ),
    ItemModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jpname: "Go kibun wa ikagadesu ka",
      enname: "How are you feeling?",
    ),
    ItemModel(
      sound: "sounds/phrases/are_you_coming.wav",
      jpname: "Kimasu ka",
      enname: "Are you coming?",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        centerTitle: true,
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return Item(
            item: phrasesList[index],
            color: const Color(0xff50ADC7),
            showImage: false,
          );
        },
      ),
    );
  }
}
