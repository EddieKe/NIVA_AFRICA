import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "MUli",
    //appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: nTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: nTextColor),
    bodyMedium: TextStyle(color: nTextColor),
  );
}

//AppBarTheme appBarTheme() {
// return const AppBarTheme(
 //   color: Colors.white,
 //   elevation: 0,
 //   iconTheme: IconThemeData(color: Colors.black), systemOverlayStyle: SystemUiOverlayStyle.dark, toolbarTextStyle: TextTheme(
 //     titleLarge: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
//    ).bodyMedium, titleTextStyle: TextTheme(
  //    titleLarge: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
//    ).titleLarge,
 // );
//
