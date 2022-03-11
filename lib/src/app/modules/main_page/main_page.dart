import 'package:flutter/material.dart';
import 'package:app_sis/src/app/modules/intro_page/intro_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      home: IntroPage(),
    );
  }
}
