import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fiska/pages/homePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 1500,
          curve: Curves.bounceInOut,
          backgroundColor: Colors.white,
          splash: 'assets/fulllogo.png',
          nextScreen: HomePage(),
          splashIconSize: 160.0,
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
