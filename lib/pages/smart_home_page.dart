import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/bottom_navigation_bar.dart';
import 'package:flutter_innovainfosys_navid_1/smartHomePage_utils/drop_down_menu.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({key}) : super(key: key);

  @override
  State<SmartHomePage> createState() => _SmartHomePageState();
}

class _SmartHomePageState extends State<SmartHomePage> {
  int _currentIndex = 2;
  bool _isDropdownOpen = false; // Dropdown state variable

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
          child: Column(
            children: [
              // Smart Home Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Smart Home',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.12,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 40,
                      height: 40,
                      child: const Image(
                        height: 40,
                        width: 40,
                        image: AssetImage(
                          'icons/contrast-adjustment.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Dropdown Menu
              PopupMenuButton<String>(
                onSelected: (value) {},
                itemBuilder: (BuildContext context) => [
                  DropDownMenu.buildMenuItem('bedroom', 'Bedroom'),
                  DropDownMenu.buildMenuItem('dining_room', 'Dining Room'),
                  DropDownMenu.buildMenuItem('drawing_room', 'Drawing Room'),
                ],
                onCanceled: _toggleDropdown,
                offset: const Offset(0, 40), // handle selection here
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 20, 19, 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffd8e4e8),
                    border: Border.all(
                      color: const Color(0xff404040),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text(
                          'Living Room',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.08,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          width: 25,
                          height: 25,
                          image: AssetImage(
                            _isDropdownOpen ? 'icons/up.png' : 'icons/down.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Smart Mode lists
            ],
          ),
        ),
      ),
    );
  }
}
