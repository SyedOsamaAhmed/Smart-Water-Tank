import 'package:flutter/material.dart';

import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/bottom_navigation.dart';
import 'package:smart_water_tank/views/widget/sliders.dart';
import 'package:smart_water_tank/views/widget/switches.dart';

class WaterLevel extends StatefulWidget {
  const WaterLevel({super.key});

  @override
  State<WaterLevel> createState() => _WaterLevelState();
}

class _WaterLevelState extends State<WaterLevel> {
  Offset origin = const Offset(0.0, 0.0);
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
                        builder: (context) => const MainScreen(),
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
                child: const Padding(
                    padding: EdgeInsets.only(top: 15.0), child: Switches()),
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
                                  maxWidth:
                                      MediaQuery.of(context).size.width / 2,
                                  maxHeight:
                                      MediaQuery.of(context).size.height *
                                          0.68),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.02,
                                    child: const Text(
                                      "Full",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.14,
                                    child: const Text(
                                      "Max Level Non-Peak Hours",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.23,
                                    child: const Text(
                                      "Max Level Peak Hours",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.17,
                                    child: const Text(
                                      "Critical Level Non-Peak Hours",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.10,
                                    child: const Text(
                                      "Critical Level Peak Hours",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: const Text(
                                      "Empty",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ))),
                      const Levels(),
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
