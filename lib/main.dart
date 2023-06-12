import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/pages/home_page.dart';
import 'package:flutter_innovainfosys_navid_1/utils/theme.dart';

void main() {
  runApp(const SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme(),
      home: const HomePage(),
    );
  }
}
