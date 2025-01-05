// payment_info.dart
import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Payment Info'),
          trailing: Icon(Icons.edit),
          onTap: () {
            // Add functionality to edit payment info
          },
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('**** **** **** 7000'),
            subtitle: Text('Expires 3/23'),
          ),
        ),
      ],
    );
  }
}
