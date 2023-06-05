import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  State<Switches> createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  @override
  Widget build(BuildContext context) {
    bool activeStatusTank = true, activeStatusUnits = true;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FlutterSwitch(
            width: MediaQuery.of(context).size.width * 0.39,
            valueFontSize: 12.0,
            padding: 4.0,
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
            valueFontSize: 11.5,
            toggleSize: 24.0,
            value: activeStatusUnits,
            borderRadius: 30.0,
            padding: 1.0,
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
    );
  }
}
