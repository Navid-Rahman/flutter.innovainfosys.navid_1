import 'package:flutter/material.dart';

Widget buildRoomContainer(
  String imageAsset,
  String temperature,
  String roomName,
  String deviceCount,
) {
  return Container(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 3, 6, 2),
                decoration: BoxDecoration(
                  color: const Color(0xff4c7380),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  temperature,
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
        Image.asset(
          imageAsset,
          height: 90,
          width: 90,
        ),
        Text(
          roomName,
          style: const TextStyle(
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
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                deviceCount,
                style: const TextStyle(
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
  );
}
