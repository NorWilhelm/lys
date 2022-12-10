import 'package:flutter/material.dart';

class Themes {
  static var themeMode = ThemeMode.light;

  static ThemeData standard = ThemeData(
    colorSchemeSeed: const Color(0xff6750a4),
  );

  static ThemeData light = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Color(0xff262626),
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Color(0xffa6a6a6),
        onSurface: Colors.white,
        background: Colors.yellow,
        secondary: Colors.purple,
        surface: Color(0xFF0A0E21),
        error: Colors.red,
        onPrimary: Color(0xFF0A0E21),
        brightness: Brightness.light,
      ));

  static ThemeData lightFancy = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Color(0xff00B4AB),
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        background: Colors.yellow,
        secondary: Colors.purple,
        surface: Color(0xFF0A0E21),
        error: Colors.red,
        onPrimary: Color(0xFF0A0E21),
        brightness: Brightness.light,
      ));

  static ThemeData lightYellowFancy = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        primary: Colors.yellow,
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        background: Colors.yellow,
        secondary: Colors.purple,
        surface: Color(0xFF0A0E21),
        error: Colors.red,
        onPrimary: Color(0xFF0A0E21),
        brightness: Brightness.dark,
      ));
}
