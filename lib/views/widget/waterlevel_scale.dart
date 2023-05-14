import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.37,
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
            padding: EdgeInsets.only(right: 18.0, top: 24),
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
            padding: EdgeInsets.only(right: 18.0, top: 104),
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
            padding: EdgeInsets.only(right: 18.0, top: 187),
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
            padding: EdgeInsets.only(right: 18.0, top: 215),
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
          indent: 9.0,
          endIndent: 8.0,
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
            padding: const EdgeInsets.only(right: 18.0, top: 24),
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
            padding: const EdgeInsets.only(right: 18.0, top: 104),
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
            padding: const EdgeInsets.only(right: 18.0, top: 190),
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
            padding: const EdgeInsets.only(right: 18.0, top: 222),
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
