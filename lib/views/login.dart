import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_water_tank/views/signup.dart';
import 'package:smart_water_tank/views/waterpump_main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002863),
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Image(image: AssetImage('images/smart_water_tank.png')),
        ),
        Container(
            alignment: Alignment.center,
            child: const Column(
              children: [
                SizedBox(
                  width: 280.0,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Align(
                            widthFactor: 1.0,
                            child: FaIcon(FontAwesomeIcons.user)),
                        contentPadding: EdgeInsets.only(left: 8.0),
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
                  width: 280.0,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                            widthFactor: 1.0,
                            child: FaIcon(FontAwesomeIcons.lock)),
                        contentPadding: EdgeInsets.only(left: 8.0),
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
        const SizedBox(
          height: 45,
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFA7CAFF)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ));
                    },
                    child: const Text("Login")),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ));
                  },
                  child: const Text(
                    "Register Here",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
