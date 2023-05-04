import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.20,
      decoration: const BoxDecoration(color: Color(0xFF4D86DC)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: const [
                Text.rich(
                  TextSpan(
                      text: "45",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                      ),
                      children: [
                        TextSpan(
                            text: "%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ))
                      ]),
                ),
                Text("Water Level in %",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ))
              ],
            ),
          ),
          const VerticalDivider(
            width: 1.0,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: const [
                Text.rich(
                  TextSpan(
                      text: "2.5",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                      ),
                      children: [
                        TextSpan(
                            text: "ft",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ))
                      ]),
                ),
                Text("Water Level in ft",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
