import 'package:flutter/material.dart';
import 'package:niva/components/home/body.dart';
import 'package:niva/components/main_components.dart/custom_nav.dart';
import 'package:niva/components/main_components.dart/enums.dart';
import 'package:niva/widgets/screen_height_initializer.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScreenHeightInitializer(child: Body()),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
