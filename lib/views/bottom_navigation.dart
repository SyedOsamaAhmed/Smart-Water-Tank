import 'package:flutter/material.dart';
import 'package:smart_water_tank/views/widget/bottom_contents.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: const BoxDecoration(color: Color(0xFF4D86DC)),
        child: const BottomContents());
  }
}
