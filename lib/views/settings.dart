import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/widget/bottom_navigation.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({super.key});

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  bool activeStatusTank = true, activeStatusUnits = true, pumpStatus = true;

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
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
            Expanded(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: SfSliderTheme(
                          data: SfSliderThemeData(tickSize: Size(22.0, 15.0)),
                          child: SfRangeSlider.vertical(
                            overlayShape: const SfOverlayShape(),
                            values: const SfRangeValues(0.0, 4.0),
                            min: 0.0,
                            max: 4.0,
                            showLabels: true,
                            showDividers: true,
                            showTicks: true,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Positioned(
                        height: MediaQuery.of(context).size.height * 0.30,
                        child: SfRangeSlider.vertical(
                          values: const SfRangeValues(1.0, 3.5),
                          min: 1.0,
                          max: 3.5,
                          showLabels: true,
                          onChanged: (value) {},
                        ),
                      ),
                      Positioned(
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: SfRangeSlider.vertical(
                          values: const SfRangeValues(0.5, 3.0),
                          min: 0.5,
                          max: 3.0,
                          showLabels: true,
                          showDividers: true,
                          showTicks: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
