import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/pages/home_page.dart';
import 'package:flutter_innovainfosys_navid_1/pages/power_usage.dart';
import 'package:flutter_innovainfosys_navid_1/pages/smart_home_page.dart';

import '../constants/colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentIndex,
        onTap: (index) {
          if (index == 0) {
            // Navigate to HomePage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          } else if (index == 1) {
            // Navigate to SmartHomePage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SmartHomePage(),
              ),
            );
          } else if (index == 2) {
            // Navigate to PowerUsagePage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PowerUsagePage(),
              ),
            );
          } else {
            widget.onTap(index);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              margin: const EdgeInsets.only(right: 8),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: ImageIcon(
                  AssetImage('icons/home.png'),
                  size: 24,
                  color: Color(0xff4c7380),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 8),
              width: (MediaQuery.of(context).size.width - 40) / 4,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: ImageIcon(
                  AssetImage('icons/network.png'),
                  size: 24,
                  color: Color(0xff4c7380),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 8),
              width: (MediaQuery.of(context).size.width - 40) / 4,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: ImageIcon(
                  AssetImage('icons/pie-graph.png'),
                  size: 24,
                  color: Color(0xff4c7380),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: (MediaQuery.of(context).size.width - 40) / 4,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: ImageIcon(
                  AssetImage('icons/profile.png'),
                  size: 24,
                  color: Color(0xff4c7380),
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
