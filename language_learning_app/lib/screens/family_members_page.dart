import 'package:flutter/material.dart';
import 'package:language_learning_app/components/List_item.dart';
import 'package:language_learning_app/models/Item_models.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
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
        centerTitle: true,
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return Item(color: Colors.green, item: familyMembersList[index]);
        },
      ),
    );
  }
}
