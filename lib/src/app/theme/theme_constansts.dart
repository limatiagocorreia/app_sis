import 'package:flutter/material.dart';

const primarySwatchColor = Colors.blue;
const buttonTextColor = Colors.lime;

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: primarySwatchColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: buttonTextColor,
      ),
    ));

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
