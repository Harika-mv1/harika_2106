// category_item.dart
import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final String category;

  GenreItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category),
      leading: TextButton(
        onPressed: () {
          // Handle "All" button press
        },
        child: Text('All'),
      ),
      trailing: IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          // Handle close button press
        },
      ),
    );
  }
}
