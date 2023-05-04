import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: SizedBox(
          width: 1,
          height: 190,
          child: Container(decoration: BoxDecoration(color: Colors.black)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
            Text("4"),
            SizedBox(width: 10),
            Text(
              "Full",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 18.0, top: 50),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
            Text("3.5"),
            SizedBox(width: 10),
            Text(
              "Max level",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 18.0, top: 100),
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
            SizedBox(width: 10),
            Text(
              "Current level",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 18.0, top: 150),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
            Text("1"),
            SizedBox(width: 10),
            Text(
              "Critical level",
              style: TextStyle(fontSize: 10),
            )
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
            const Text("0"),
            const SizedBox(width: 10),
            const Text(
              "Empty",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    ]);
  }
}
