import 'package:flutter/material.dart';

class Water extends StatelessWidget {
  const Water({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
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
    );
  }
}
