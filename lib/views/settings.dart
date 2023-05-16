import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_water_tank/views/graph_screen.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart'
    show SfRangeSlider, SfRangeValues;
import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/bottom_navigation.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({super.key});

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  bool activeStatusTank = true, activeStatusUnits = true, pumpStatus = true;
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
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              )),
          child: const Text(
            "Majid Maqbool",
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaterGraph(),
                      ))),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: FlutterSwitch(
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: MediaQuery.of(context).size.width * 0.10,
                      valueFontSize: 15.0,
                      padding: 1.2,
                      toggleSize: 22.0,
                      value: activeStatusTank,
                      borderRadius: 30.0,
                      showOnOff: true,
                      activeText: "Overhead tank",
                      activeTextFontWeight: FontWeight.w500,
                      inactiveTextFontWeight: FontWeight.w500,
                      inactiveText: "Underground tank",
                      activeColor: const Color(0xFF98EDD0),
                      inactiveColor: const Color(0xFF98EDD0),
                      activeTextColor: Colors.black,
                      inactiveTextColor: Colors.black,
                      onToggle: (val) {
                        setState(() {
                          activeStatusTank = val;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlutterSwitch(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.width * 0.10,
                      valueFontSize: 15.0,
                      toggleSize: 30.0,
                      value: activeStatusUnits,
                      borderRadius: 30.0,
                      padding: 6.0,
                      showOnOff: true,
                      activeText: "Ft",
                      inactiveText: "Meters",
                      activeColor: const Color(0xFF98EDD0),
                      activeTextFontWeight: FontWeight.w500,
                      inactiveColor: const Color(0xFF98EDD0),
                      inactiveTextFontWeight: FontWeight.w500,
                      activeTextColor: Colors.black,
                      onToggle: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 2,
                        maxHeight: MediaQuery.of(context).size.height * 0.65),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: positionMain.dy - 120,
                          child: const Text(
                            "Full",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: positionMain.dy - 35,
                          child: const Text(
                            "Max Level Non-Peak Hours",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: positionMain.dy + 35,
                          child: const Text(
                            "Max Level Peak Hours",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: positionMain.dy + 110,
                          child: const Text(
                            "Critical Level Non-Peak Hours",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: positionMain.dy + 140,
                          child: const Text(
                            "Critical Level Peak Hours",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          top: positionMain.dy + 190,
                          child: const Text(
                            "Empty",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Positioned(
                          key: _keyMainLvl,
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
                          top: positionMain.dy - 50,
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
                          height: MediaQuery.of(context).size.height * 0.25,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
