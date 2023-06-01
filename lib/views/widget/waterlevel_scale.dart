import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({super.key});

  @override
  Widget build(BuildContext context) {
    Offset position = const Offset(0.0, 0.0);
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height * 0.40,
        ),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.20,
            ),
            child: Stack(children: [
              Positioned(
                top: position.dy + 28,
                child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    const Text(
                      "Full",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              Positioned(
                top: position.dy + 50,
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
              Positioned(
                top: position.dy + 70,
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
              Positioned(
                bottom: position.dy + 50,
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
              Positioned(
                bottom: position.dy + 22,
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          const Flexible(
            child: VerticalDivider(
              color: Colors.black,
              width: 0.0,
              indent: 34.0,
              endIndent: 26.0,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.20,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: position.dy + 28,
                  child: Row(
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
                      const Text(
                        "4",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: position.dy + 50,
                  child: Row(
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
                      const Text(
                        "3.5",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: position.dy + 70,
                  child: Row(
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
                      const Text(
                        "2.0",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: position.dy + 50,
                  child: Row(
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
                      const Text(
                        "1.0",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: position.dy + 20,
                  child: Row(
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
                      const Text(
                        "0",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
