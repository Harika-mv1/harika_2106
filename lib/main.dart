import 'package:flutter/material.dart';
import 'package:harika_2106/routes/route.dart';
import 'package:harika_2106/routes/routes_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: Routes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
