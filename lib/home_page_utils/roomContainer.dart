import 'package:flutter/material.dart';

class RoomContainer extends StatelessWidget {
  final String imagePath;
  final String temperature;
  final String roomName;
  final String deviceCount;

  const RoomContainer({
    required this.imagePath,
    required this.temperature,
    required this.roomName,
    required this.deviceCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
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
          Image(
            image: AssetImage(imagePath),
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
}
