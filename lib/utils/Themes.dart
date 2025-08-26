import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static const Color cyan = Color(0xFF00B8D9);
  static const Color navy = Color(0xFF0D1B2A);
  static const Color darkBlue = Color(0xFF1B263B);
  static const Color accent = Color(0xFFFCA311);
  static const Color white = Color(0xFFEAEAEA);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.montserrat(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Themes.white,
        ),
        displayMedium: GoogleFonts.montserrat(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Themes.white,
        ),
        bodyLarge: GoogleFonts.lato(
          fontSize: 16,
          color: Themes.white,
        ),
        bodyMedium: GoogleFonts.lato(
          fontSize: 14,
          color: Themes.white,
        ),
      ),
    );
  }
}
