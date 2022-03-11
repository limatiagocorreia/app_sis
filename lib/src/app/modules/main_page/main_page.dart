import 'package:app_sis/src/app/theme/theme_constansts.dart';
import 'package:flutter/material.dart';
import 'package:app_sis/src/app/modules/intro_page/intro_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: IntroPage(),
    );
  }
}
