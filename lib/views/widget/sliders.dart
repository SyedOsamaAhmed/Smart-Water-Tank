import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart'
    show SfRangeSlider, SfRangeValues;

class Levels extends StatefulWidget {
  const Levels({super.key});

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  Offset positionMain = const Offset(0.0, 0.0);
  Offset positionCritical = const Offset(0.0, 0.0);
  Offset positionNonCritical = const Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.65,
        maxWidth: MediaQuery.of(context).size.width / 2,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height * 0.58,
            left: positionCritical.dx - positionNonCritical.dx,
            child: SfRangeSliderTheme(
              data: SfRangeSliderThemeData(
                  thumbRadius: 0.0, trackCornerRadius: 0.0),
              child: SfRangeSlider.vertical(
                values: const SfRangeValues(0.0, 0.0),
                onChanged: (value) {},
                showLabels: true,
                activeColor: const Color(0xFF013481),
                inactiveColor: const Color(0xFFA9CBFF),
                max: 4.0,
                min: 0.0,
              ),
            ),
          ),
          Positioned(
            top: positionMain.dy + 75,
            height: MediaQuery.of(context).size.height * 0.34,
            child: SfRangeSlider.vertical(
              values: const SfRangeValues(1.0, 3.5),
              showLabels: true,
              activeColor: const Color(0xFF013481),
              inactiveColor: const Color(0xFFA9CBFF),
              onChanged: (value) {},
              max: 3.5,
              min: 1.0,
            ),
          ),
          Positioned(
            bottom: positionNonCritical.dy + 50,
            height: MediaQuery.of(context).size.height * 0.32,
            child: SfRangeSlider.vertical(
              values: const SfRangeValues(0.5, 3.0),
              activeColor: const Color(0xFF013481),
              inactiveColor: const Color(0xFFA9CBFF),
              showLabels: true,
              onChanged: (value) {},
              max: 3.0,
              min: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
