import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(MaterialColor mainColor) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: mainColor,
        elevation: 100,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        labelStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: mainColor,
        ),
        filled: true,
        fillColor: mainColor.shade100,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor, width: 2),
        ),
      ),
    );
  }
}
