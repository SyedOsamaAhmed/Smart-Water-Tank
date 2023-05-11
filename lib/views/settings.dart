import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart'
    show SfRangeSlider, SfRangeValues;
import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/widget/bottom_navigation.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({super.key});

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  bool activeStatusTank = true, activeStatusUnits = true, pumpStatus = true;
  final GlobalKey _keyTank = GlobalKey();
  final GlobalKey _keyCritical = GlobalKey();
  final GlobalKey _keyNonCritical = GlobalKey();
  Offset positionTank = const Offset(0.0, 0.0);
  Offset positionCritical = const Offset(0.0, 0.0);
  Offset positionNonCritical = const Offset(0.0, 0.0);

  void _getWidgetPosition() {
    RenderBox renderBox =
        _keyTank.currentContext!.findRenderObject() as RenderBox;
    positionTank = renderBox.localToGlobal(Offset.zero);
    RenderBox renderbox1 =
        _keyCritical.currentContext!.findRenderObject() as RenderBox;
    positionCritical = renderbox1.localToGlobal(Offset.zero);
    RenderBox renderbox2 =
        _keyNonCritical.currentContext!.findRenderObject() as RenderBox;
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
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: FlutterSwitch(
                      width: 320.0,
                      height: 40.0,
                      valueFontSize: 16.0,
                      toggleSize: 24.0,
                      value: activeStatusTank,
                      borderRadius: 30.0,
                      padding: 1.2,
                      showOnOff: true,
                      activeText: "Overhead tank",
                      activeTextFontWeight: FontWeight.w500,
                      inactiveTextFontWeight: FontWeight.w500,
                      inactiveText: "Underground tank",
                      activeColor: const Color(0xFF002863),
                      inactiveColor: const Color(0xFF002863),
                      activeTextColor: Colors.white,
                      onToggle: (val) {
                        setState(() {
                          activeStatusTank = val;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlutterSwitch(
                      width: 130.0,
                      height: 40.0,
                      valueFontSize: 15.0,
                      toggleSize: 30.0,
                      value: activeStatusUnits,
                      borderRadius: 30.0,
                      padding: 6.0,
                      showOnOff: true,
                      activeText: "Ft",
                      inactiveText: "Meters",
                      activeColor: const Color(0xFF002863),
                      activeTextFontWeight: FontWeight.w500,
                      inactiveColor: const Color(0xFF002863),
                      inactiveTextFontWeight: FontWeight.w500,
                      activeTextColor: Colors.white,
                      onToggle: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.70,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                      maxHeight: MediaQuery.of(context).size.height * 0.60),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.60,
                          child: Stack(children: [
                            Positioned(
                                top: 25,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: const Text(
                                  "Full Level",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            Positioned(
                                top: positionCritical.dy + 35,
                                width: MediaQuery.of(context).size.width * 0.40,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: const Text(
                                  "Max Level Non-Peak Hours",
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                )),
                            Positioned(
                                top: positionNonCritical.dy + 35,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                width:
                                    MediaQuery.of(context).size.height * 0.40,
                                child: const Text(
                                  "Max Level Peak Hours",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400),
                                )),
                            Positioned(
                                width: MediaQuery.of(context).size.width * 0.40,
                                bottom: positionNonCritical.dy - 55,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: const Text(
                                  "Critical Level Non-Peak Hours",
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                  ),
                                )),
                            Positioned(
                                bottom: 18.0,
                                width: MediaQuery.of(context).size.width * 0.40,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: const Text(
                                  "Critical Level Peak Hours",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400),
                                )),
                            Positioned(
                                bottom: -20.0,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                child: const Text(
                                  "Empty Level",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400),
                                )),
                          ]),
                        ),
                      ),
                      Positioned(
                        key: _keyTank,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: SfRangeSlider.vertical(
                          values: const SfRangeValues(0.0, 4.0),
                          min: 0.0,
                          max: 4.0,
                          showLabels: true,
                          onChanged: (value) {},
                        ),
                      ),
                      Positioned(
                        key: _keyCritical,
                        top: positionTank.dy - 40,
                        left: positionTank.dx,
                        height: MediaQuery.of(context).size.height * 0.29,
                        child: SfRangeSlider.vertical(
                          values: const SfRangeValues(1.0, 3.5),
                          min: 1.0,
                          max: 3.5,
                          showLabels: true,
                          onChanged: (value) {},
                        ),
                      ),
                      Positioned(
                        key: _keyNonCritical,
                        top: positionTank.dy,
                        left: positionTank.dx,
                        height: MediaQuery.of(context).size.height * 0.30,
                        child: SfRangeSlider.vertical(
                          values: SfRangeValues(0.5, 3.0),
                          min: 0.5,
                          max: 3.0,
                          showLabels: true,
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
