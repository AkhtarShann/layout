import 'package:flutter/material.dart';
import 'home.dart'; // Import the home screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBirthdayScreen(), // Load the home screen
    );
  }
}
