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
    return AppBar(
      elevation: 0.0,
      backgroundColor: AppColors.mainBrown,
      title: const Text("NIVA"),
      actions: const <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
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
