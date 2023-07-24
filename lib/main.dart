import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:niva/screens/splashScreen/splash_screen.dart';

import 'package:niva/helper/dependencies.dart' as dep;
import 'package:niva/utilities/routes.dart';
import 'package:niva/utilities/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB5xdmWKXMgb1xFbPgv9m86lRuVy0XscMA",
      appId: "1:263160459450:android:63ecbb1ba22d0855d51283",
      projectId: "niva-africa",
      messagingSenderId: "263160459450",
      // Other optional properties...on the later basis
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIVA',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
