import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/greetingsContainer.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/weatherTicketContainer.dart';
import 'package:flutter_innovainfosys_navid_1/bottom_navigation_bar.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/roomContainer.dart';

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
                    child: SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 2, 8, 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              buildRoomContainer(
                                'icons/living-room.png',
                                '19${String.fromCharCode(0x00B0)}C',
                                'Living Room',
                                '5',
                              ),

                              // Bedroom container
                              buildRoomContainer(
                                'icons/bedroom.png',
                                '12${String.fromCharCode(0x00B0)}C',
                                'Bedroom',
                                '8',
                              ),
                            ],
                          ),

                          // Active Componants lists
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                            // Active number of devices
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Active',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.09,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF4C7380),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Text(
                                        '6',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.07,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'See All',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.08,
                                      color: Color(0xFF4C7380)),
                                ),
                              ],
                            ),
                          ),

                          //AC container section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //AC Section
                              Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF9A7265),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'icons/air-conditioner.png'),
                                              height: 70,
                                              width: 70,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  'Temparature',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    letterSpacing: 0.06,
                                                  ),
                                                ),
                                                Text(
                                                  '19${String.fromCharCode(0x00B0)}C',
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.09,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              7, 10, 7, 2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'AC',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      letterSpacing: 0.09,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Living room',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white,
                                                      letterSpacing: 0.06,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xff659a6d),
                                                  ),
                                                  color:
                                                      const Color(0xffe0ebe2),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: const Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                        'OFF',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.08,
                                                          color:
                                                              Color(0xFF659A6D),
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: 0.9,
                                                      child: SizedBox(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image(
                                                          image: AssetImage(
                                                              'icons/power-switch.png'),
                                                          color:
                                                              Color(0xFF659A6D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              //Lamp Section
                              Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF9A7265),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      children: [
                                        const Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'icons/ceiling-lamp.png'),
                                              height: 70,
                                              width: 70,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Colour',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    letterSpacing: 0.06,
                                                  ),
                                                ),
                                                Text(
                                                  'White',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.09,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              7, 10, 7, 2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Lamp',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      letterSpacing: 0.09,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Dining room',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white,
                                                      letterSpacing: 0.06,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xff659a6d),
                                                  ),
                                                  color:
                                                      const Color(0xffe0ebe2),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: const Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                        'OFF',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.08,
                                                          color:
                                                              Color(0xFF659A6D),
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: 0.9,
                                                      child: SizedBox(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image(
                                                          image: AssetImage(
                                                              'icons/power-switch.png'),
                                                          color:
                                                              Color(0xFF659A6D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
