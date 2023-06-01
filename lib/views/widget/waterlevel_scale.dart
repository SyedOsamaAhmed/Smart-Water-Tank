import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.40,
      ),
      child: Row(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
            child: Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: Stack(children: [
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    const Text(
                      "Full",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 34),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text(
                        "Max level",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text(
                        "Current level",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text(
                        "Critical level",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text(
                        "Empty",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        const Flexible(
          child: VerticalDivider(
            color: Colors.black,
            width: 0.0,
            thickness: 1.0,
            indent: 38.0,
            endIndent: 38.0,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.40,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Stack(children: [
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
                padding: const EdgeInsets.only(right: 0.0, top: 35),
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
                padding: const EdgeInsets.only(right: 0.0, top: 62),
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
                padding: const EdgeInsets.only(right: 0.0, top: 222),
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
                padding: const EdgeInsets.only(right: 0.0, top: 245),
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
          ),
        ),
      ]),
    );
  }
}
