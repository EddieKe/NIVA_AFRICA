import 'package:flutter/material.dart';

import 'package:niva/screens/login_screen/login/login_body.dart';

class LogInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const LogInScreen({super.key});
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
