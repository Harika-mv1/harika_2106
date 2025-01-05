import 'package:flutter/material.dart';
import 'package:harika_2106/features/create_account/create_account.dart';
import 'package:harika_2106/widgets/interest_tile.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  _InterestsScreenState createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  Map<String, bool> interests = {
    'Music': false,
    'Activism': false,
    'Business': false,
    'Movies & TV': false,
    'Art & Design': false,
    'Wine & Dine': false,
  };

  Map<String, List<String>> interestImages = {
    'Music': ['assets/music.png'],
    'Activism': ['assets/activism.png'],
    'Business': ['assets/business.png'],
    'Movies & TV': ['assets/movies.png'],
    'Art & Design': ['assets/artdesign.png'],
    'Wine & Dine': ['assets/winedine.png'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What are your interests?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: interests.keys.map((String key) {
                  return InterestTile(
                    interest: key,
                    imagePaths: interestImages[key]!,
                    isSelected: interests[key]!,
                    onChanged: (bool? value) {
                      setState(() {
                        interests[key] = value!;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccount()), // Navigate to CreateAccount
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(5, 10, 49, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
