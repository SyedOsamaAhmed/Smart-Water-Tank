import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.37,
      child: IntrinsicHeight(
        child: Row(children: [
          Stack(alignment: Alignment.topLeft, children: [
            Row(
              children: [
                const SizedBox(width: 10),
                const Text(
                  "Full",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 24),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Max level",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 104),
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
              padding: const EdgeInsets.only(right: 18.0, top: 190),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Critical level",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 218),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
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
                    decoration: BoxDecoration(
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
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  Text(
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
      ),
    );
  }
}
