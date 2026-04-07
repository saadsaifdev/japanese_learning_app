import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/Colors_page.dart';
import 'package:language_learning_app/screens/Phrases_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildCategory({
    required BuildContext context,
    required String text,
    required Color color,
    required Widget page,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 6, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: CategoryItem(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          text: text,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        centerTitle: true,
        title: const Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          buildCategory(
            context: context,
            text: "Numbers",
            color: Colors.orange,
            page: const NumbersPage(),
          ),
          buildCategory(
            context: context,
            text: "Family Members",
            color: Colors.green,
            page: const FamilyMembersPage(),
          ),
          buildCategory(
            context: context,
            text: "Colors",
            color: Colors.purple,
            page: const ColorsPage(),
          ),
          buildCategory(
            context: context,
            text: "Phrases",
            color: const Color(0xff50ADC7),
            page: const Phrasespage(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}