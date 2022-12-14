import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        color: Colors.grey.shade800,
      ),
      bodyText2: base.bodyText2?.copyWith(
        color: Colors.grey.shade800,
        // fontFamily: GoogleFonts.poppins().toString(),
        fontSize: 18,
      ),
    );
  }

  final ThemeData baseThemeData = ThemeData.light();

  return baseThemeData.copyWith(
    textTheme: _textTheme(baseThemeData.textTheme),
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(color: Colors.brown),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.brown))),
  );
}
