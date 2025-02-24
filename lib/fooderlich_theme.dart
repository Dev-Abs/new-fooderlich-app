import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodySmall: GoogleFonts.openSans(
      fontSize: 14.0,
      color: Colors.black, // Enumeration? of colors
      fontWeight: FontWeight.w600, 
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 32.0,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 36.0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 40.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodySmall: GoogleFonts.openSans(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 18.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 32.0,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 36.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 40.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
