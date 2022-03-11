import 'package:flutter/material.dart';

class StandardTextForm extends StatelessWidget {
  final String label;

  StandardTextForm({@required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
