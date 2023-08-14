import 'package:flutter/material.dart';

import 'package:niva/screens/login_screen/login/login_body.dart';

class LogInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  LogInScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: const Body(),
    );
  }
}
