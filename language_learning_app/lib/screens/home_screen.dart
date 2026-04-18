import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/core/theme.dart';
import 'package:language_learning_app/core/zen_pattern_background.dart';
import 'package:language_learning_app/screens/colors_screen.dart';
import 'package:language_learning_app/screens/family_members_screen.dart';
import 'package:language_learning_app/screens/numbers_screen.dart';
import 'package:language_learning_app/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildCategory({
    required BuildContext context,
    required String title,
    required Color accentColor,
    required IconData icon,
    required String lessonCount,
    required Widget page,
  }) {
    return CategoryCard(
      title: title,
      accentColor: accentColor,
      icon: icon,
      lessonCount: lessonCount,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
      ),
      body: SafeArea(
        child: ZenPatternBackground(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: [
                _buildCategory(
                  context: context,
                  title: 'Numbers',
                  accentColor: AppTheme.vermilion,
                  icon: Icons.numbers_rounded,
                  lessonCount: '10 Items',
                  page: const NumbersScreen(
                    categoryHeroTag: 'Numbers_hero',
                    categoryIcon: Icons.numbers_rounded,
                  ),
                ),
                _buildCategory(
                  context: context,
                  title: 'Family Members',
                  accentColor: const Color(0xFF43A047),
                  icon: Icons.family_restroom_rounded,
                  lessonCount: '8 Items',
                  page: const FamilyMembersScreen(
                    categoryHeroTag: 'Family Members_hero',
                    categoryIcon: Icons.family_restroom_rounded,
                  ),
                ),
                _buildCategory(
                  context: context,
                  title: 'Colors',
                  accentColor: const Color(0xFF8E24AA),
                  icon: Icons.palette_rounded,
                  lessonCount: '7 Items',
                  page: const ColorsScreen(
                    categoryHeroTag: 'Colors_hero',
                    categoryIcon: Icons.palette_rounded,
                  ),
                ),
                _buildCategory(
                  context: context,
                  title: 'Phrases',
                  accentColor: const Color(0xFF00838F),
                  icon: Icons.chat_bubble_rounded,
                  lessonCount: '8 Items',
                  page: const PhrasesScreen(
                    categoryHeroTag: 'Phrases_hero',
                    categoryIcon: Icons.chat_bubble_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
