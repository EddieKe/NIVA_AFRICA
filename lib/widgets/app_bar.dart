import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required double elevation,
    required Color backgroundColor,
    required Text title,
    required List<Widget> actions,
  });

  @override
  Widget build(BuildContext context) {
    return const AppBar(
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
