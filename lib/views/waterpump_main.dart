import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_water_tank/views/graph_screen.dart';

import 'package:smart_water_tank/views/settings.dart';
import 'package:smart_water_tank/views/bottom_navigation.dart';

import 'package:smart_water_tank/views/widget/waterlevel_scale.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool activeStatusTank = true, activeStatusUnits = true, pumpStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WaterGraph(),
              )),
          child: const BottomNavigation()),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Majid Maqbool"),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaterLevel(),
                      ));
                },
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
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.09),
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0, left: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: FlutterSwitch(
                          width: MediaQuery.of(context).size.width * 0.38,
                          height: MediaQuery.of(context).size.width * 0.09,
                          valueFontSize: 11.0,
                          padding: 1.2,
                          toggleSize: 24.0,
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
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.width * 0.09,
                          valueFontSize: 11.0,
                          toggleSize: 24.0,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 4.0, color: Colors.black)),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.blue,
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: MediaQuery.of(context).size.height * 0.18,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Scale(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 44.0, right: 44.0, bottom: 12.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: const BoxDecoration(
                    color: Color(0XFF93F3D2),
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0XFF5E5E5E),
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 1.0,
                          blurRadius: 2.0)
                    ]),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Pump Status",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage('images/water_pump.png')),
                          Text(
                            "ON",
                            style: TextStyle(
                              color: Color(0XFF5E5E5E),
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
