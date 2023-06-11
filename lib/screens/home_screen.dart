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
  late double screenHeight; // Define the screenHeight field

  @override
  void initState() {
    super.initState();
    screenHeight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScreenHeightInitializer(
        screenHeight:
            screenHeight, // Pass the initialized screenHeight to ScreenHeightInitializer
        child: const Body(),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
