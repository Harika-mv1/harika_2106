// category_item.dart
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 26,
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(189),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Center(
              child: Text(
                'All',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              category,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.asset('assets/arrow.png'), // Use arrow.png instead of arrow icon
        ],
      ),
    );
  }
}
