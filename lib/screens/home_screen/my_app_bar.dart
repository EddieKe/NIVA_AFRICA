import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
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

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
