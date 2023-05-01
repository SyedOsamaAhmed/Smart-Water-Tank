import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF002863),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Image(image: AssetImage('images/smart_water_tank.png')),
        Container(
            alignment: Alignment.center,
            child: Column(
              children: const [
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        ),
                        hintText: "User Name",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0))),
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.width * 0.15,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFA7CAFF)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () {},
                  child: const Text("Login")),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Register Here",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ))
          ],
        )
      ]),
    );
  }
}
