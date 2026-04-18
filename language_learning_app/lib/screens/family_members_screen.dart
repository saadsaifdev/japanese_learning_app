import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_tile.dart';
import 'package:language_learning_app/core/zen_pattern_background.dart';
import 'package:language_learning_app/models/item_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({
    super.key,
    required this.categoryHeroTag,
    required this.categoryIcon,
  });
  final String categoryHeroTag;
  final IconData categoryIcon;
  final List<ItemModel> familyMembersList = const [
    ItemModel(
        sound: "sounds/family_members/father.wav",
        img: "assets/images/family_members/family_father.png",
        jpname: "Chichioya",
        enname: "Father"),
    ItemModel(
        sound: "sounds/family_members/mother.wav",
        img: "assets/images/family_members/family_mother.png",
        jpname: "Hahaoya",
        enname: "Mother"),
    ItemModel(
        sound: "sounds/family_members/daughter.wav",
        img: "assets/images/family_members/family_daughter.png",
        jpname: "Musume",
        enname: "Daughter"),
    ItemModel(
        sound: "sounds/family_members/son.wav",
        img: "assets/images/family_members/family_son.png",
        jpname: "Son",
        enname: "Musuko"),
    ItemModel(
        sound: "sounds/family_members/grand father.wav",
        img: "assets/images/family_members/family_grandfather.png",
        jpname: "Ojison",
        enname: "Grand Father"),
    ItemModel(
        sound: "sounds/family_members/grand mother.wav",
        img: "assets/images/family_members/family_grandmother.png",
        jpname: "Sobo",
        enname: "Grand Mother"),
    ItemModel(
        sound: "sounds/family_members/older bother.wav",
        img: "assets/images/family_members/family_older_brother.png",
        jpname: "Nisan",
        enname: "Older Brother"),
    ItemModel(
        sound: "sounds/family_members/older sister.wav",
        img: "assets/images/family_members/family_older_sister.png",
        jpname: "Ane",
        enname: "Older Sister"),
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
                color: const Color(0xFF43A047),
              ),
            ),
            const SizedBox(width: 8),
            const Text('Family Members'),
          ],
        ),
      ),
      body: SafeArea(
        child: ZenPatternBackground(
          child: ListView.builder(
            itemCount: familyMembersList.length,
            itemBuilder: (context, index) {
              return ItemTile(
                color: const Color(0xFF43A047),
                item: familyMembersList[index],
                animationDelay: Duration(milliseconds: 100 * index),
              );
            },
          ),
        ),
      ),
    );
  }
}
