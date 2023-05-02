import 'package:flutter/material.dart';
import 'package:niva/screens/home_page.dart';
import 'package:get/get.dart';
import 'package:niva/screens/services/popular_services.dart';
import 'package:niva/screens/services/recommended_list.dart';
import 'package:niva/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIVA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
