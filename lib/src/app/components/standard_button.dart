import 'package:flutter/material.dart';

class StandardButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  StandardButtonWidget({this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
