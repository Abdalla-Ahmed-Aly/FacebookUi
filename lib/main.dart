import 'package:facebook/HomeScreen.dart';
import 'package:facebook/Login_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (_) => Homescreen(),
      },
      home: SafeArea(bottom: false, top: false, child: LoginScreen()),
    );
  }
}
