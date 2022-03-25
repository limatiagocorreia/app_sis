import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final bool isCenter;

  StandardButton({@required this.buttonText, @required this.onPressed, this.isCenter});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white)),
          ),
        ),
        onPressed: onPressed,
        child: Align(
          alignment: isCenter ? Alignment.center:Alignment.centerLeft,
          child: Text(
      
            buttonText,
          ),
        ),
      ),
    );
  }
}
