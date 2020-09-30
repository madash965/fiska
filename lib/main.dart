import 'package:fiska/pages/homePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "poppins", scaffoldBackgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}
