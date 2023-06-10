import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/greetingsContainer.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/weatherTicketContainer.dart';
import 'package:flutter_innovainfosys_navid_1/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // Greetings Row Container
              buildGreetingsContainer(),

              // Weather Ticket Container
              buildWeatherTicketContainer(context),

              // Rooms Container
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(8, 2, 8, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rooms',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.09,
                                    color: Color(0xFF404040),
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.08,
                                    color: Color(0xFF4C7380),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Rooms detailed feature container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Living room Container
                            Container(
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xffd8e4e8),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 3, 6, 2),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff4c7380),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Text(
                                            '19${String.fromCharCode(0x00B0)}C',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.07,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage('icons/living-room.png'),
                                    height: 90,
                                    width: 90,
                                  ),
                                  const Text(
                                    'Living Room',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.09,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFE266),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Text(
                                          '5',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.06,
                                            color: Color(0xFF404040),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'devices',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.06,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // Bedroom container
                            Container(
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xffd8e4e8),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 3, 6, 2),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff4c7380),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Text(
                                            '12${String.fromCharCode(0x00B0)}C',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.07,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage('icons/bedroom.png'),
                                    height: 90,
                                    width: 90,
                                  ),
                                  const Text(
                                    'Bedroom',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.09,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFE266),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.06,
                                            color: Color(0xFF404040),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'devices',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.06,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Active Componants lists
            ],
          ),
        ),
      ),
    );
  }
}
