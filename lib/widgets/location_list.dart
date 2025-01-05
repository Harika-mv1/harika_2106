import 'package:flutter/material.dart';
import 'package:harika_2106/features/interests/interests_screen.dart';


class LocationList extends StatelessWidget {
  final List<String> locations = [
    'Los Angeles',
    'San Diego',
    'Oceanside',
    'San Marcos',
    'Carlsbad',
    'San Francisco',
    'Orange',
    'Cupertino',
    'Fremont',
    'West Cliff',
  ];

   LocationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            locations[index],
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InterestsScreen()),
            );
          },
        );
      },
    );
  }
}
