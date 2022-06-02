import 'package:flutter/material.dart';
import 'package:portable_cash_register/welcomeScreen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portable Cash Register",
      theme: ThemeData(
        fontFamily: '',
      ),
      home: WelcomeScreen(),
    );
  }
}
