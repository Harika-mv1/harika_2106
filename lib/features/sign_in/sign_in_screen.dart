import 'package:flutter/material.dart';
import 'package:harika_2106/features/Home%20page/home_screen.dart';
import 'package:harika_2106/widgets/validation_text_fields.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:harika_2106/utils/image_constants.dart'; // Import the image constants

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 187,
              left: 19,
              child: Row(
                children: [
                  Image.asset(
                    ImagesConstants.logo,
                    width: 82.935, // 165.87px / 2
                    height: 25.92,
                  ),
                  SizedBox(width: 0), // Set the gap
                  Image.asset(
                    ImagesConstants.logoname,
                    width: 82.935, // 165.87px / 2
                    height: 25.92,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 213,
              left: 19,
              child: Text(
                'Go Outside.',
                style: TextStyle(
                  fontSize: 48, // Increase the size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ValidationTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        icon: MaterialIcons.email, // Ensure correct icon usage
                        validator: _validateEmail,
                      ),
                      SizedBox(height: 16),
                      ValidationTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        icon: MaterialIcons.lock, // Ensure correct icon usage
                        obscureText: true,
                        validator: _validatePassword,
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: CustomButton(
                          text: 'Create Account',
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
