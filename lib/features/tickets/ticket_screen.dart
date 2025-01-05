// ticket_screen.dart
import 'package:flutter/material.dart';
import 'package:harika_2106/widgets/add_button.dart';
import 'package:harika_2106/widgets/confirm_button.dart';
import 'package:harika_2106/widgets/custom_date_field.dart';
import 'package:harika_2106/widgets/custom_text_field.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets & Times'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TicketSection(),
            SizedBox(height: 20),
            PresaleSection(),
            SizedBox(height: 20),
            ConfirmButton(),
          ],
        ),
      ),
    );
  }
}

class TicketSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ticket', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        CustomTextField(label: 'General Admission'),
        SizedBox(height: 10),
        CustomTextField(label: '200'),
        SizedBox(height: 10),
        AddButton(label: 'Add Another Ticket'),
      ],
    );
  }
}

class PresaleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Presale #1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        CustomTextField(label: 'General Admission'),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: CustomTextField(label: 'Price \$0')),
            SizedBox(width: 10),
            Expanded(child: CustomTextField(label: 'Quantity 0')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: CustomDateField(label: 'Start Date')),
            SizedBox(width: 10),
            Expanded(child: CustomDateField(label: 'Time')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: CustomDateField(label: 'End Date')),
            SizedBox(width: 10),
            Expanded(child: CustomDateField(label: 'Time')),
          ],
        ),
        SizedBox(height: 10),
        AddButton(label: 'Add Another Sale'),
      ],
    );
  }
}
