import 'package:flutter/material.dart';
import 'package:harika_2106/features/Home%20page/home_screen.dart';
import 'package:harika_2106/features/create_account/create_account.dart';
import 'package:harika_2106/features/interests/interests_screen.dart';
import 'package:harika_2106/features/location/location_view.dart';
import 'package:harika_2106/features/sign_in/sign_in_screen.dart';
import 'package:harika_2106/features/splash_screen/splash_screen.dart';
import 'package:harika_2106/routes/routes_constants.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashViewScreen());
      case Routes.location:
        return MaterialPageRoute(builder: (_) => LocationView());
      case Routes.interests:
        return MaterialPageRoute(builder: (_) => InterestsScreen());
      case Routes.createAccount:
        return MaterialPageRoute(builder: (_) => CreateAccount());
      case Routes.SignInScreen:
        return MaterialPageRoute(builder: (_) => SignInScreen());  
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());   
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
