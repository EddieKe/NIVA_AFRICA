import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.elevation,
    required this.backgroundColor,
    required this.title,
    required this.actions,
  }) : super(key: key);

  final double elevation;
  final Color backgroundColor;
  final Text title;
  final List<Widget> actions;

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const MyAppBar(
      elevation: 0.0,
      backgroundColor: AppColors.mainBrown,
      title: Text("NIVA"),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: null),
        IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: null),
      ],
    );
  }
}
