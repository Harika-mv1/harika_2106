import 'package:flutter/material.dart';
import 'package:harika_2106/utils/image_constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImagesConstants.logo,
          width: 72,
          height: 33,
        ),
        SizedBox(height: 8.0), // Adding a small space between the logos
        Image.asset(
          ImagesConstants.logoname,
          width: 72,
          height: 34,
        ),
      ],
    );
  }
}
