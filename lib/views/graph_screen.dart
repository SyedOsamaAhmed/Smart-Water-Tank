import 'package:flutter/material.dart';
import 'package:smart_water_tank/views/settings.dart';
import 'package:smart_water_tank/views/waterpump_main.dart';
import 'package:smart_water_tank/views/widget/bottom_navigation.dart';
import 'package:smart_water_tank/views/widget/graph.dart';

class WaterGraph extends StatefulWidget {
  const WaterGraph({super.key});

  @override
  State<WaterGraph> createState() => _WaterGraphState();
}

class _WaterGraphState extends State<WaterGraph> {
  final List<String> timeline = <String>["Today", "Monthly", "Yearly"];
  final List<String> level = <String>["Water", "Electricity"];
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      elevation: 16,
                      alignment: Alignment.center,
                      value: timeline.first,
                      items: timeline
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      elevation: 16,
                      alignment: Alignment.center,
                      value: level.first,
                      items: level
                          .map<DropdownMenuItem<String>>((String waterlevel) {
                        return DropdownMenuItem<String>(
                          value: waterlevel,
                          child: Text(waterlevel),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
              const Graph(),
            ],
          )),
    );
  }
}