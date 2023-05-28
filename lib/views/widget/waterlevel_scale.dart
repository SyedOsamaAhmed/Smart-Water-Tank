import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.38,
          maxWidth: MediaQuery.of(context).size.width),
      child: Row(mainAxisSize: MainAxisSize.max, children: [
        const Stack(alignment: Alignment.topLeft, children: [
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                "Full",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.0, top: 16),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Max level",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.0, top: 50),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Current level",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.0, top: 175),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Critical level",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.0, top: 195),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Empty",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ]),
        const VerticalDivider(
          color: Colors.black,
          width: 0.0,
          thickness: 1.0,
          indent: 21.0,
          endIndent: 21.0,
        ),
        Stack(alignment: Alignment.topLeft, children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              const Text("4"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 18),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                const Text("3.5"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 54),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                const Text(
                  "2.5",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 180),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                const Text("1"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 200),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                const Text("0"),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}
