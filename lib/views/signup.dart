import 'package:flutter/material.dart';

import 'package:smart_water_tank/views/widget/signup_fields.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF002863),
      ),
      child: Container(alignment: Alignment.center, child: const UserInfo()),
    );
  }
}
