// confirm_button.dart
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Add functionality to confirm settings
        },
        child: Text('Confirm'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 3, 31, 78),
        ),
      ),
    );
  }
}
