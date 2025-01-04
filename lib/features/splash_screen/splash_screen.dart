import 'package:flutter/material.dart';
import 'package:harika_2106/features/location/location_view.dart';
import 'package:harika_2106/utils/logo_widget.dart';

class SplashViewScreen extends StatefulWidget {
  @override
  _SplashViewScreenState createState() => _SplashViewScreenState();
}

class _SplashViewScreenState extends State<SplashViewScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLocationScreen();
  }

  _navigateToLocationScreen() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LocationView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: LogoWidget(),
        ),
      ),
    );
  }
}
