import 'package:flutter/material.dart';
import 'package:smart_water_tank/views/login.dart';
import 'package:smart_water_tank/views/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF002863),
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
