import 'package:flutter/material.dart';

class BottomContents extends StatelessWidget {
  const BottomContents({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                              ))
                        ]),
                  ),
                ),
                Expanded(
                  child: Text("Water Level in %",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      )),
                ),
              ],
            ),
            const VerticalDivider(
              width: 1.0,
              color: Colors.black,
              indent: 5.0,
              endIndent: 33.0,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                              ))
                        ]),
                  ),
                ),
                Expanded(
                  child: Text("Water Level in ft",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      )),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
