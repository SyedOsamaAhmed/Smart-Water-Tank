import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(color: Color(0xFF4D86DC)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Center(
                child: Text.rich(
                  TextSpan(
                      text: "45",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 42,
                      ),
                      children: [
                        TextSpan(
                            text: "%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ))
                      ]),
                ),
              ),
              Expanded(
                child: Text("Water Level in %",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    )),
              ),
            ],
          ),
          const VerticalDivider(
            width: 1.0,
            color: Colors.black,
            indent: 13.0,
            endIndent: 13.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text.rich(
                  TextSpan(
                      text: "2.5",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 42,
                      ),
                      children: [
                        TextSpan(
                            text: "ft",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ))
                      ]),
                ),
              ),
              Expanded(
                child: Text("Water Level in ft",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    )),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          )
        ],
      ),
    );
  }
}
