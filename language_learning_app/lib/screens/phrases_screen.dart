import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_tile.dart';
import 'package:language_learning_app/core/zen_pattern_background.dart';
import 'package:language_learning_app/models/item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({
    super.key,
    required this.categoryHeroTag,
    required this.categoryIcon,
  });
  final String categoryHeroTag;
  final IconData categoryIcon;

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
      sound: "sounds/phrases/i_love_anime.wav",
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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: categoryHeroTag,
              child: Icon(
                categoryIcon,
                color: const Color(0xFF00838F),
              ),
            ),
            const SizedBox(width: 8),
            const Text('Phrases'),
          ],
        ),
      ),
      body: SafeArea(
        child: ZenPatternBackground(
          child: ListView.builder(
            itemCount: phrasesList.length,
            itemBuilder: (context, index) {
              return ItemTile(
                item: phrasesList[index],
                color: const Color(0xFF00838F),
                showImage: false,
                animationDelay: Duration(milliseconds: 100 * index),
              );
            },
          ),
        ),
      ),
    );
  }
}
