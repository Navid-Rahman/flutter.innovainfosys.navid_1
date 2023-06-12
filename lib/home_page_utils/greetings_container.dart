import 'package:flutter/material.dart';

Widget buildGreetingsContainer() {
  return Container(
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
        ),
      ],
    ),
  );
}
