import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/bottom_navigation_bar.dart';

class PowerUsagePage extends StatefulWidget {
  const PowerUsagePage({super.key});

  @override
  State<PowerUsagePage> createState() => _PowerUsagePageState();
}

class _PowerUsagePageState extends State<PowerUsagePage> {
  int _currentIndex = 2;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4c7380),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
      body: SafeArea(
        child: Text('Hello World'),
      ),
    );
  }
}
