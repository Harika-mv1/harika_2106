// profile_screen.dart
import 'package:flutter/material.dart';
import 'package:harika_2106/utils/dark_mode_toggle.dart';
import 'package:harika_2106/utils/language_selection.dart';
import 'package:harika_2106/utils/payment_info.dart';
import 'package:harika_2106/widgets/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfilePicture(),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add functionality to change profile picture
              },
              child: Text('Change Profile Picture'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                suffixIcon: Icon(Icons.edit),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            DarkModeToggle(),
            SizedBox(height: 20),
            LanguageSelection(),
            SizedBox(height: 20),
            PaymentInfo(),
          ],
        ),
      ),
    );
  }
}
