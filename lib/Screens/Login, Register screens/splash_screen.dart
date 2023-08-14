// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiffily/Screens/Login,%20Register%20screens/onboarding_screen.dart';
import 'package:tiffily/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Duration of the splash screen
    Timer(const Duration (seconds: 2),
     () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> const OnboardingScrren()))
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 55,
          width: 175,
          child: Image.asset(tiffilylogo),
        ),
      ),
    );
  }
}
