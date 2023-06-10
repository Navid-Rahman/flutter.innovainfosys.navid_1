import 'package:flutter/material.dart';

Widget buildWeatherTicketContainer(BuildContext context) {
  return Container(
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
            // Temperature info
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
            color: Colors.black,
            thickness: 1,
            height: 20,
          ),
        ),
        // Humidity, Visibility, NE Wind tab section
        Row(
          children: [
            buildWeatherTab(
              context: context,
              iconPath: 'icons/drop.png',
              value: '97',
              unit: '%',
              label: 'Humidity',
            ),
            const SizedBox(
              width: 5,
            ),
            buildWeatherTab(
              context: context,
              iconPath: 'icons/view.png',
              value: '7',
              unit: 'Km',
              label: 'Visibility',
            ),
            const SizedBox(
              width: 5,
            ),
            buildWeatherTab(
              context: context,
              iconPath: 'icons/wind.png',
              value: '3',
              unit: 'Km/h',
              label: 'NE Wind',
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildWeatherTab({
  required BuildContext context,
  required String iconPath,
  required String value,
  required String unit,
  required String label,
}) {
  return Expanded(
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
                child: Image(
                  image: AssetImage(iconPath),
                  width: 20,
                  height: 20,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.09,
                  color: Color(0xFF404040),
                ),
              ),
              Text(
                unit,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF404040),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.06,
                    color: Color(0xFF404040)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
