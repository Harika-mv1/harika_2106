// custom_date_field.dart
import 'package:flutter/material.dart';

class CustomDateField extends StatelessWidget {
  final String label;

  CustomDateField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.calendar_today),
      ),
    );
  }
}
