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
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.blueAccent,
    ),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.red,
    ),
    titleTextStyle: TextStyle(
      color: Colors.red,
      fontSize: 25,
    ),
    centerTitle: true,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
