import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons, FaIcon;
import 'package:smart_water_tank/views/login.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Customer Details",
        style: TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: const TextField(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: const TextField(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: const TextField(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: const TextField(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: const TextField(
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
        ]),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.70,
          height: MediaQuery.of(context).size.height * 0.08,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFA7CAFF)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
              child: const Text("Next")),
        ),
      )
    ]);
  }
}
