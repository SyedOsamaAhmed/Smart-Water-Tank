import 'package:flutter/material.dart';

class Pump extends StatelessWidget {
  const Pump({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pump Status",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
