import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4c7380),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // Greetings Row Container
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning,',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.12,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Kimberly Mastrangelo',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.07,
                            color: Color(0xFF404040),
                          ),
                        )
                      ],
                    ),

                    // Notification bell icon
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),

              // Weather Ticket Container
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xffd8e4e8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Cloud Icon
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('icons/cloudy.png'),
                                width: 55,
                                height: 55,
                              ),
                            ],
                          ),
                        ),

                        // Date and place info
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'May 16, 2023 10:05 am',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.06,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              Text(
                                'Cloudy',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.09,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              Text(
                                'Jakarta, Indonesia',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.06,
                                  color: Color(0xFF404040),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Temparature info
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '19${String.fromCharCode(0x00B0)}C',
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  color: Color(0xFF404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Horizontal line
                    const SizedBox(
                      width: 300,
                      child: Divider(
                        color: Color.fromARGB(255, 84, 81, 81),
                        thickness: 1,
                        height: 20,
                      ),
                    ),

                    // Humadity, Visibility, NE Wind tab section
                    Row(
                      children: [
                        //Humadity tab section
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                            decoration: BoxDecoration(
                              color: const Color(0x4CFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: const Image(
                                        image: AssetImage('icons/drop.png'),
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    const Text(
                                      '97',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.09,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                    const Text(
                                      '%',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Humadity',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.06,
                                          color: Color(0xFF404040)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 5,
                        ),

                        //Visibility tab section
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                            decoration: BoxDecoration(
                              color: const Color(0x4CFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: const Image(
                                        image: AssetImage('icons/view.png'),
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    const Text(
                                      '7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.09,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                    const Text(
                                      'Km',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Visibility',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.06,
                                          color: Color(0xFF404040)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 5,
                        ),

                        //NE Wind tab section
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                            decoration: BoxDecoration(
                              color: const Color(0x4CFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: const Image(
                                        image: AssetImage('icons/wind.png'),
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    const Text(
                                      '3',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.09,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                    const Text(
                                      'Km/h',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF404040),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'NE Wind',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.06,
                                          color: Color(0xFF404040)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // End
                  ],
                ),
              ),

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
            ],
          ),
        ),
      ),
    );
  }
}
