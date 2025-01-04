import 'package:flutter/material.dart';
import 'package:harika_2106/widgets/location_list.dart';
import 'package:harika_2106/widgets/search_bar.dart';

class LocationView extends StatefulWidget {
  const LocationView({ super.key });

  @override
  _LocationViewState createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find Nearby Gatherings.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Set your Location.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 16.0),
                SearchBarWidget(),
              ],
            ),
          ),
          Expanded(
            child: LocationList(),
          ),
        ],
      ),
    );
  }
}