// utils/event_card.dart
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String organizer;
  final String title;
  final String price;
  final String date;
  final String time;
  final String imageUrl;

  const EventCard({super.key, 
    required this.organizer,
    required this.title,
    required this.price,
    required this.date,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(imageUrl, fit: BoxFit.cover, width: 50, height: 50),
        title: Text(title),
        subtitle: Text('$organizer • $date • $time'),
        trailing: Text(price),
      ),
    );
  }
}
