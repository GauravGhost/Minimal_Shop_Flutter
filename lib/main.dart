import 'package:flutter/material.dart';
import 'package:minimal_shop/pages/intro_page.dart';
import 'package:minimal_shop/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: IntroPage(),
    );
  }
}