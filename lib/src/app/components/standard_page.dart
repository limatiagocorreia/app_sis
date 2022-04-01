import 'package:flutter/material.dart';
import '../utils/export.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  StandardPage({required this.pageTitle, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingSizes.introPageBorder,
          right: PaddingSizes.introPageBorder,
          top: PaddingSizes.introPageTop,
        ),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
    );
  }
}
