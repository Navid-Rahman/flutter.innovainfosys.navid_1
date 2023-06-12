import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/smartHomePage_utils/drop_down_menu.dart';
import 'package:flutter_innovainfosys_navid_1/widgets/bottom_navigationbar.dart';

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
                  padding: const EdgeInsets.all(10.0),
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
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),

                        // 1st Column
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 2, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // 1st Column
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 15, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smart Lamp',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                            color: Color(0xFF404040),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 5, 0),
                                          child: const Text(
                                            'Dining Room',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.06,
                                              color: Color(0xFF404040),
                                            ),
                                          ),
                                        ),

                                        //Vertical Line
                                        Container(
                                          width: 1,
                                          height:
                                              10, // Adjust the height as per your requirement
                                          color: Colors
                                              .grey, // Customize the color of the line
                                        ),

                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 0, 0, 0),
                                          child: const Text(
                                            'Tue Thu',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.06,
                                              color: Color(0xFF404040),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          child: const Image(
                                            fit: BoxFit.cover,
                                            image: AssetImage('icons/idea.png'),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'from',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.06,
                                                color: Color(0xFF404040),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              '8 pm',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.07,
                                                color: Color(0xFF404040),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //Vertical Line
                              Container(
                                width: 1,
                                height:
                                    50, // Adjust the height as per your requirement
                                color: Colors.grey[
                                    600], // Customize the color of the line
                              ),

                              // 2nd Column
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 20, 0),
                                child: Column(
                                  children: [
                                    //ON Button Container
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xFF9A7265),
                                            ),
                                            color: const Color(0xFFE7DDDA),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.9,
                                                child: SizedBox(
                                                  width: 15,
                                                  height: 15,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'icons/power-switch.png'),
                                                    color: Color(0xFF9A7265),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: Text(
                                                  'ON',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.08,
                                                    color: Color(0xFF9A7265),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    // TO - time Column
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 6, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'to',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.06,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '8 am',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 0.08,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Vertical Line
                                        Column(
                                          children: [
                                            Container(
                                              width: 1,
                                              height:
                                                  20, // Adjust the height as per your requirement
                                              color: Colors
                                                  .grey, // Customize the color of the line
                                            ),
                                          ],
                                        ),

                                        // Delete button Column
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Image(
                                                  width: 24,
                                                  height: 24,
                                                  image: AssetImage(
                                                    'icons/delete.png',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image(
                                                  width: 20,
                                                  height: 20,
                                                  image: AssetImage(
                                                      'icons/edit.png'),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
            ),
          ],
        ),
      ),
    );
  }
}
