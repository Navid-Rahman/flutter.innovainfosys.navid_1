import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/smartHomePage_utils/drop_down_menu.dart';
import 'package:flutter_innovainfosys_navid_1/widgets/bottom_navigationbar.dart';
import '../smartHomePage_utils/smart_mode_container.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                ),
                color: Color(0xFF4C7380),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                // 1st Column
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        DropDownMenu.buildMenuItem(
                            'dining_room', 'Dining Room'),
                        DropDownMenu.buildMenuItem(
                            'drawing_room', 'Drawing Room'),
                      ],
                      onCanceled: _toggleDropdown,
                      offset: const Offset(0, 40), // handle selection here
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 20, 19, 20),
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
                                  _isDropdownOpen
                                      ? 'icons/up.png'
                                      : 'icons/down.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Smart Mode lists
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffd8e4e8),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      // Smart devices number
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Row(
                          children: [
                            const SizedBox(height: 16),
                            const Text(
                              'Smart Mode',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.09,
                                color: Color(0xFF404040),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 22,
                              decoration: BoxDecoration(
                                color: const Color(0xff4c7380),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                '4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Smart Lamp Container
                      const Column(
                        children: [
                          SmartDeviceContainer(
                            deviceName: 'Smart Lamp',
                            location: 'Dining Room',
                            schedule: 'Tue Thu',
                            deviceIcon: 'icons/idea.png',
                            fromTime: '8 pm',
                            toTime: '8 am',
                            isButtonOn: true,
                          ),
                          SmartDeviceContainer(
                            deviceName: 'Air Conditioner',
                            location: 'Bedroom',
                            schedule: 'Sun',
                            deviceIcon: 'icons/ac.png',
                            fromTime: '10 pm',
                            toTime: '11 am',
                            isButtonOn: false,
                          ),
                          SmartDeviceContainer(
                            deviceName: 'Television',
                            location: 'Living Room',
                            schedule: 'Tue Thu',
                            deviceIcon: 'icons/smart-tv.png',
                            fromTime: '8 pm',
                            toTime: '8 am',
                            isButtonOn: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
