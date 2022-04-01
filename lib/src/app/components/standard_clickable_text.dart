import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StandardClickableText extends StatelessWidget {
  final String label;
  final Function() onTap;

  StandardClickableText({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(label),
      ),
    );
  }
}
