// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/buttom_nav_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ButtomNavPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

