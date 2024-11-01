import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        surface: Colors.white,
        primary: Colors.grey.shade100,
        secondary: const Color.fromARGB(255, 252, 252, 255),
        tertiary: Colors.black,
        shadow: Colors.grey[400],
       ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: Colors.black,
        primary: Colors.grey.shade900,
        secondary: Colors.grey.shade800,
        tertiary: Colors.white,
        shadow: Colors.black,
        ));
