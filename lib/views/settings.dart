import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_water_tank/views/graph_screen.dart';

import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/bottom_navigation.dart';
import 'package:smart_water_tank/views/widget/sliders.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({super.key});

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  bool activeStatusTank = true, activeStatusUnits = true, pumpStatus = true;
  Offset positionMain = const Offset(0.0, 0.0);

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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.39,
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
                      FlutterSwitch(
                        width: MediaQuery.of(context).size.width * 0.18,
                        valueFontSize: 15.0,
                        toggleSize: 22.0,
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
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width / 2,
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.68),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: positionMain.dy + 20,
                                  child: const Text(
                                    "Full",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  top: positionMain.dy + 110,
                                  child: const Text(
                                    "Max Level Non-Peak Hours",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  top: positionMain.dy + 168,
                                  child: const Text(
                                    "Max Level Peak Hours",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  bottom: positionMain.dy + 115,
                                  child: const Text(
                                    "Critical Level Non-Peak Hours",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  bottom: positionMain.dy + 70,
                                  child: const Text(
                                    "Critical Level Peak Hours",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  bottom: positionMain.dy + 30,
                                  child: const Text(
                                    "Empty",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Levels()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
