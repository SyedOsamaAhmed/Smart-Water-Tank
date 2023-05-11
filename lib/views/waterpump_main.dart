import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_water_tank/views/graph_screen.dart';
import 'package:smart_water_tank/views/settings.dart';
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
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                    child: Container(
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
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Scale(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 6.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.16,
                  decoration: const BoxDecoration(color: Color(0XFF93F3D2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Pump Status",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Image(image: AssetImage('images/water_pump.png')),
                          Text(
                            "ON",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
