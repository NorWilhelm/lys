import 'package:flutter/material.dart'
    show // Importing only the ones that are needed
        ThemeData,
        Color,
        ColorScheme,
        Colors,
        Brightness;

class Themes {
  static ThemeData standard = ThemeData(
    colorSchemeSeed: const Color(0xff6750a4),
  );
  static ThemeData funsy = ThemeData(
    colorSchemeSeed: const Color(0xFF50A476),
  );

  static ThemeData light = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Color(0xff262626),
        onPrimary: Color(0xFF0A0E21),
        secondary: Colors.purple,
        onSecondary: Color(0xffa6a6a6),
        background: Colors.yellow,
        onBackground: Colors.white,
        error: Colors.red,
        onError: Colors.yellow,
        surface: Color(0xFFFCECEC),
        onSurface: Colors.white,
        brightness: Brightness.light,
      ));

  static ThemeData lightFancy = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Color(0xff00B4AB),
        onPrimary: Color(0xFF0A0E21),
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        background: Colors.yellow,
        secondary: Colors.purple,
        surface: Color(0xFF0A0E21),
        error: Colors.red,
        brightness: Brightness.light,
      ));

  static ThemeData lightYellowFancy = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Colors.yellow,
        onPrimary: Color(0xFF0A0E21),
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        background: Colors.yellow,
        secondary: Colors.purple,
        surface: Color(0xFF0A0E21),
        error: Colors.red,
        brightness: Brightness.dark,
      ));
}
