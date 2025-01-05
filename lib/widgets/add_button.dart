// add_button.dart
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String label;

  AddButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        // Add functionality for adding tickets or sales
      },
      icon: Icon(Icons.add),
      label: Text(label),
      style: TextButton.styleFrom(foregroundColor: Colors.purple), // Adjust color to match the design
    );
  }
}
