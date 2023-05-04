import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_water_tank/views/widget/bottom_navigation.dart';
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
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        title: const Text("Majid Maqbool"),
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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: FlutterSwitch(
                      width: 300.0,
                      height: 40.0,
                      valueFontSize: 15.0,
                      toggleSize: 32.0,
                      value: activeStatusTank,
                      borderRadius: 30.0,
                      padding: 6.0,
                      showOnOff: true,
                      activeText: "Overhead tank",
                      inactiveText: "Underhead tank",
                      activeColor: const Color(0xFF98EDD0),
                      inactiveColor: const Color(0xFF98EDD0),
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
                      toggleSize: 32.0,
                      value: activeStatusUnits,
                      borderRadius: 30.0,
                      padding: 6.0,
                      showOnOff: true,
                      activeText: "Ft",
                      inactiveText: "Meters",
                      activeColor: const Color(0xFF98EDD0),
                      inactiveColor: const Color(0xFF98EDD0),
                      onToggle: (val) {
                        setState(() {
                          activeStatusUnits = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 5.0, color: Colors.black)),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.blue,
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 28.0),
                  child: Scale(),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Pump Status"),
            FlutterSwitch(
              width: 110.0,
              height: 40.0,
              valueFontSize: 15.0,
              toggleSize: 32.0,
              value: pumpStatus,
              borderRadius: 30.0,
              padding: 6.0,
              showOnOff: true,
              activeText: "ON",
              inactiveText: "OFF",
              activeColor: const Color(0xFF98EDD0),
              inactiveColor: const Color(0xFF98EDD0),
              onToggle: (val) {
                setState(() {
                  pumpStatus = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
