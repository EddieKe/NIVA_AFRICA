import 'package:flutter/material.dart';
import 'package:niva/components/home/home_body.dart';
import 'package:niva/components/main_components.dart/custom_nav.dart';
import 'package:niva/components/main_components.dart/enums.dart';
//import 'package:niva/widgets/my_app_bar.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      screenHeight = MediaQuery.of(context).size.height;
      setState(() {}); // Trigger a rebuild after initializing the screenHeight
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: MyAppBar(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
