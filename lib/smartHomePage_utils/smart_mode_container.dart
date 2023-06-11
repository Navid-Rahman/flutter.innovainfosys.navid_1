import 'package:flutter/material.dart';

class SmartModeContainer extends StatelessWidget {
  final String title;
  final String location;
  final String schedule;
  final String fromTime;
  final String toTime;
  final String iconPath;

  const SmartModeContainer({
    required this.title,
    required this.location,
    required this.schedule,
    required this.fromTime,
    required this.toTime,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image(
            width: 40,
            height: 40,
            image: AssetImage(iconPath),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF404040),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF404040),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$schedule: $fromTime - $toTime',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF404040),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF404040),
            size: 16,
          ),
        ],
      ),
    );
  }
}
