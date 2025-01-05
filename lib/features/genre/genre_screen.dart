// genre_list.dart
import 'package:flutter/material.dart';
import 'package:harika_2106/routes/routes_constants.dart'; // Import the routes

class GenreScreen extends StatefulWidget {
  @override
  _GenreScreenState createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  Map<String, bool> genres = {
    'EDM': false,
    'Hip Hop / Rap': false,
    'Indie': false,
    'Alt Rock': false,
    'Jazz': false,
    'Hyperpop': false,
    'Rager': false,
    'K-Pop': false,
    'Classical': false,
    'Other': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Autosaved'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Genre',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: genres.keys.map((String key) {
                  return CheckboxListTile(
                    title: Text(key),
                    value: genres[key],
                    onChanged: (bool? value) {
                      setState(() {
                        genres[key] = value!;
                      });
                      Navigator.pushNamed(context, Routes.homeScreen); // Navigate to home_screen.dart
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
