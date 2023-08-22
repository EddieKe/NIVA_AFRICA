import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:niva/components/main_components.dart/enums.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({super.key, required MenuState selectedMenu});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      bottomNavigationBar: GNav(
        gap: 6,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "home",
          ),
          GButton(
            icon: Icons.face_retouching_natural_rounded,
            text: "skincare",
          ),
          GButton(
            icon: Icons.shopping_cart_checkout_outlined,
            text: "cart",
          ),
          GButton(
            icon: Icons.shop,
            text: "shop",
          ),
          GButton(
            icon: CupertinoIcons.person_2,
            text: "user",
          ),
        ],
      ),
    );
  }
}
