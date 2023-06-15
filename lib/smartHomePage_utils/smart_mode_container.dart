import 'package:flutter/material.dart';

class SmartDeviceContainer extends StatelessWidget {
  final String deviceName;
  final String location;
  final String schedule;
  final String deviceIcon;
  final String fromTime;
  final String toTime;
  final bool isButtonOn;

  const SmartDeviceContainer({
    Key? key,
    required this.deviceName,
    required this.location,
    required this.schedule,
    required this.deviceIcon,
    required this.fromTime,
    required this.toTime,
    required this.isButtonOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 2, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Device details
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Device name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        deviceName,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
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
                  // Location and schedule
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Text(
                          location,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.06,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 10,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          schedule,
                          style: const TextStyle(
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
                  // Device icon and from time
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(deviceIcon),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'from',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.06,
                              color: Color(0xFF404040),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            fromTime,
                            style: const TextStyle(
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
            // Button and to time
            Container(
              width: 1,
              height: 50,
              color: Colors.grey[600],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
              child: Column(
                children: [
                  // Button state
                  Row(
                    children: [
                      Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                          isButtonOn
                              ? 'icons/switch-on.png'
                              : 'icons/switch-off.png',
                        ),
                      ),
                    ],
                  ),
                  // To time and action icons
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'to',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.06,
                                    color: Color(0xFF404040),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  toTime,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.08,
                                    color: Color(0xFF404040),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 1,
                            height: 20,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Delete icon
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
                          // Edit icon
                          Row(
                            children: [
                              Image(
                                width: 20,
                                height: 20,
                                image: AssetImage('icons/edit.png'),
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
    );
  }
}



// Container(
                      //   margin: const EdgeInsets.fromLTRB(
                      //       0, 10, 0, 0),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: const Color(0xFF9A7265),
                      //     ),
                      //     color: const Color(0xFFE7DDDA),
                      //     borderRadius:
                      //         BorderRadius.circular(25),
                      //   ),
                      //   child: const Row(
                      //     crossAxisAlignment:
                      //         CrossAxisAlignment.center,
                      //     children: [
                      //       Opacity(
                      //         opacity: 0.9,
                      //         child: SizedBox(
                      //           width: 15,
                      //           height: 15,
                      //           child: Image(
                      //             image: AssetImage(
                      //                 'icons/power-switch.png'),
                      //             color: Color(0xFF9A7265),
                      //           ),
                      //         ),
                      //       ),
                      //       Center(
                      //         child: Text(
                      //           'ON',
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w600,
                      //             letterSpacing: 0.08,
                      //             color: Color(0xFF9A7265),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),