import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen/home/home_body.dart';
import 'package:niva/components/main_components.dart/custom_nav.dart';
import 'package:niva/components/main_components.dart/enums.dart';
import '../../utilities/colors.dart';
import 'package:niva/screens/home_screen/my_app_bar.dart';

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
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        elevation: 0.0,
        backgroundColor: AppColors.mainBrown,
        title: Text("NIVA"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
