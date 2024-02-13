import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData appTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    filledButtonTheme: FilledButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.green[700],
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
