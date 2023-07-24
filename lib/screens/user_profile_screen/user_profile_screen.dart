import 'package:flutter/material.dart';

import 'package:niva/screens/user_profile_screen/userProfile/profile_body.dart';

class UserProfileScreen extends StatelessWidget {
  static String routeName = "/User_profile";

  const UserProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Body(),
    );
  }
}
