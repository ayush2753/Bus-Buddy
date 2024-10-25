import 'package:busbuddy/screens/HomeScreen.dart';
import 'package:busbuddy/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.greenAccent,
      home: Scaffold(
        body: LoginScreen()
        /*HomeScreen()*/,
      ),
    );
  }
}

