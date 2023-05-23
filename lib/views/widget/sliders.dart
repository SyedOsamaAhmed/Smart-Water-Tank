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
  final GlobalKey _keyMainLvl = GlobalKey();
  final GlobalKey _keyCriticalLvl = GlobalKey();
  final GlobalKey _keyNonCriticalLvl = GlobalKey();
  Offset positionMain = const Offset(0.0, 0.0);
  Offset positionCritical = const Offset(0.0, 0.0);
  Offset positionNonCritical = const Offset(0.0, 0.0);

  void _getWidgetPosition() {
    RenderBox renderBox =
        _keyMainLvl.currentContext?.findRenderObject() as RenderBox;
    positionMain = renderBox.localToGlobal(Offset.zero);
    RenderBox renderbox1 =
        _keyCriticalLvl.currentContext?.findRenderObject() as RenderBox;
    positionCritical = renderbox1.localToGlobal(Offset.zero);
    RenderBox renderbox2 =
        _keyNonCriticalLvl.currentContext?.findRenderObject() as RenderBox;
    positionNonCritical = renderbox2.localToGlobal(Offset.zero);

    setState(() {});
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getWidgetPosition();
    });
    super.initState();
  }

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
            key: _keyMainLvl,
            height: MediaQuery.of(context).size.height * 0.59,
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
            top: positionMain.dy - 60,
            height: MediaQuery.of(context).size.height * 0.34,
            key: _keyNonCriticalLvl,
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
            key: _keyCriticalLvl,
            bottom: positionNonCritical.dy - 40,
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
