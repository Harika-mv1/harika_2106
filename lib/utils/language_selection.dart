// language_selection.dart
import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Language'),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Add functionality to change language
      },
    );
  }
}
