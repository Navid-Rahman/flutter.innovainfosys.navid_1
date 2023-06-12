import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/constants/colors.dart';
import '../home_page_utils/room_container.dart';

class RoomsWidget extends StatelessWidget {
  const RoomsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
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

              //Rooms detailed feature container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Row(
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

              //AC container section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //AC Section
                  Container(
                    width: 165,
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
                              image: AssetImage('icons/air-conditioner.png'),
                              height: 70,
                              width: 70,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
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
                          padding: const EdgeInsets.fromLTRB(7, 10, 7, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AC',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      letterSpacing: 0.09,
                                    ),
                                  ),
                                  Text(
                                    'Living room',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff659a6d),
                                  ),
                                  color: const Color(0xffe0ebe2),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'OFF',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.08,
                                          color: Color(0xFF659A6D),
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
                                          color: Color(0xFF659A6D),
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

                  //Lamp Section
                  Container(
                    width: 165,
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
                              image: AssetImage('icons/ceiling-lamp.png'),
                              height: 70,
                              width: 70,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
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
                          padding: const EdgeInsets.fromLTRB(7, 10, 7, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lamp',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      letterSpacing: 0.09,
                                    ),
                                  ),
                                  Text(
                                    'Dining room',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff659a6d),
                                  ),
                                  color: const Color(0xffe0ebe2),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'OFF',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.08,
                                          color: Color(0xFF659A6D),
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
                                          color: Color(0xFF659A6D),
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
        ),
      ),
    );
  }
}
