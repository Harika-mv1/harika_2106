// dark_mode_toggle.dart
import 'package:flutter/material.dart';

class DarkModeToggle extends StatefulWidget {
  @override
  _DarkModeToggleState createState() => _DarkModeToggleState();
}

class _DarkModeToggleState extends State<DarkModeToggle> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Dark Mode'),
        Switch(
          value: isDarkMode,
          onChanged: (bool value) {
            setState(() {
              isDarkMode = value;
              // Add functionality to toggle dark mode
            });
          },
        ),
      ],
    );
  }
}
