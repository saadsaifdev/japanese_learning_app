import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color offWhite = Color(0xFFFAFAFA);
  static const Color deepIndigo = Color(0xFF1A237E);
  static const Color vermilion = Color(0xFFE64A19);
  static const double englishBaseSize = 16;
  static const double japaneseScale = 1.15;

  static TextStyle englishStyle({
    double size = englishBaseSize,
    FontWeight weight = FontWeight.w500,
    Color color = deepIndigo,
  }) {
    return GoogleFonts.montserrat(
      fontSize: size,
      fontWeight: weight,
      color: color,
      letterSpacing: 0.2,
    );
  }

  static TextStyle japaneseStyle({
    double englishSize = englishBaseSize,
    FontWeight weight = FontWeight.w700,
    Color color = deepIndigo,
  }) {
    return GoogleFonts.notoSansJp(
      fontSize: englishSize * japaneseScale,
      fontWeight: weight,
      color: color,
      height: 1.18,
    );
  }

  static ThemeData get lightTheme {
    final TextTheme baseMontserrat = GoogleFonts.montserratTextTheme();
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: offWhite,
      colorScheme: ColorScheme.fromSeed(
        seedColor: deepIndigo,
        primary: deepIndigo,
        secondary: vermilion,
        surface: offWhite,
      ),
      textTheme: baseMontserrat.copyWith(
        headlineSmall: englishStyle(size: 24, weight: FontWeight.w700),
        titleLarge: englishStyle(size: 20, weight: FontWeight.w700),
        bodyLarge: englishStyle(),
        bodyMedium: englishStyle(size: 14),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: offWhite,
        foregroundColor: deepIndigo,
        centerTitle: true,
        titleTextStyle: englishStyle(size: 24, weight: FontWeight.w700),
      ),
      cardTheme: CardThemeData(
        elevation: 6,
        color: Colors.white.withValues(alpha: 0.9),
        shadowColor: deepIndigo.withValues(alpha: 0.18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
