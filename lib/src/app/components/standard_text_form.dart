import 'package:flutter/material.dart';

class StandardTextForm extends StatelessWidget {
  final String label;
  final TextEditingController? userInputController;
  final Function()? onEditingComplete;

  StandardTextForm({required this.label, this.userInputController, this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: userInputController,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
