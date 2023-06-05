import 'package:flutter/material.dart';

import 'package:smart_water_tank/views/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF002863),
          appBarTheme: const AppBarTheme(
            color: Color(0xFF002863),
          )),
      home: const WaterLevel(),
    );
  }
}
