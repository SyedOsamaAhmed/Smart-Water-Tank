import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Customer Details",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 45,
          ),
          const SizedBox(
              width: 280.0,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0, child: FaIcon(FontAwesomeIcons.user)),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    hintText: "First Name",
                    filled: true,
                    fillColor: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              width: 280.0,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0, child: FaIcon(FontAwesomeIcons.user)),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    hintText: "Last Name",
                    filled: true,
                    fillColor: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              width: 280.0,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0,
                        child: FaIcon(FontAwesomeIcons.locationDot)),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    hintText: "Address",
                    filled: true,
                    fillColor: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              width: 280.0,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0, child: FaIcon(FontAwesomeIcons.user)),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    hintText: "User Name",
                    filled: true,
                    fillColor: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              width: 280.0,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Align(
                        widthFactor: 1.0, child: FaIcon(FontAwesomeIcons.lock)),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white),
              )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFA7CAFF)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () {},
                  child: const Text("Next")),
            ),
          )
        ]),
      ),
    );
  }
}
