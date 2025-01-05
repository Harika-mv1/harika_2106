// utils/featured_event.dart
import 'package:flutter/material.dart';

class FeaturedEvent extends StatelessWidget {
  const FeaturedEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Event',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Check out this amazing event happening this weekend!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Image.asset('assets/homepic.png', fit: BoxFit.cover, width: 100, height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
