import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/screens/loginScreen.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:project/utils/size_utils.dart'; // Import your size utility if needed

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        print("Screen");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.background,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          
          // Centered Cart Icon
          Center(
            child: Image.asset(
            'assets/image/splash.png', // Replace 'assets/splash_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
          ),
        ],
      ),
    );
  }
}
