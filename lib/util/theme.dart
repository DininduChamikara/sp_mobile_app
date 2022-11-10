import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData basicTheme() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
        headline1: base.headline1?.copyWith(
      fontFamily: GoogleFonts.poppins(fontSize: 30).toString(),
      color: Colors.grey.shade800,
    ));
  }

  final ThemeData baseThemeData = ThemeData.light();

  return baseThemeData.copyWith(
    textTheme: _textTheme(baseThemeData.textTheme),
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(color: Colors.black),
  );
}
