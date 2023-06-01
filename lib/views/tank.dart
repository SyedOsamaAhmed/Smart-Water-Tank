import 'package:flutter/material.dart';
import 'package:smart_water_tank/views/widget/watertank_paint.dart';

class WaterTank extends StatelessWidget {
  const WaterTank({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        MediaQuery.of(context).size.width * 0.40,
        MediaQuery.of(context).size.height * 0.35,
      ),
      painter: Tank(),
    );
  }
}
