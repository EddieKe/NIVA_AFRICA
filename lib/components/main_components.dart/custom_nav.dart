import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niva/screens/home_screen.dart';
import 'package:niva/screens/user_profile_screen.dart';
import 'package:niva/screens/cart.dart';

import 'package:niva/utilities/constants.dart';
import 'enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: MenuState.home == selectedMenu
                      ? nPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: MenuState.cart == selectedMenu
                      ? nPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, CartScreen.routeName),
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.person_2,
                  color: MenuState.userProfile == selectedMenu
                      ? nPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, UserProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
