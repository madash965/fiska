import 'package:fiska/pages/profile_related/authentication.dart';
import 'package:fiska/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), //Authentication()
      theme: ThemeData(
        fontFamily: "poppins",
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
