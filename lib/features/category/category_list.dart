// category_list.dart
import 'package:flutter/material.dart';
import 'package:harika_2106/widgets/category_item.dart';
import 'package:harika_2106/routes/routes_constants.dart'; // Import the routes

class CategoryListScreen extends StatelessWidget {
  final List<String> categories = [
    'Music',
    'Activism',
    'Arts',
    'Business',
    'Movies & TV',
    'Always Open',
    'Spirituality',
    'Government',
    'Drink & Dine',
    'Health & Fitness',
    'Lifestyle',
    'Education',
    'Get Togethers',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/arrow.png'), // Use arrow.png instead of arrow icon
          onPressed: () {
            Navigator.pop(context); // Handle back button press
          },
        ),
        title: Text('Autosaved'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.genreListScreen); // Navigate to genre_list.dart screen
                },
                child: CategoryItem(category: categories[index]),
              ),
              if (index < categories.length - 1) SizedBox(height: 8.0), // Add SizedBox between items
            ],
          );
        },
      ),
    );
  }
}
