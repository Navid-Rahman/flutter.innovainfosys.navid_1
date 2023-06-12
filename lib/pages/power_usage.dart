import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/widgets/bottom_navigationbar.dart';
import '../widgets/power_usage_appbar.dart';
import '../power_usage_utils/line_chart.dart';

class PowerUsagePage extends StatefulWidget {
  PowerUsagePage({super.key});

  @override
  State<PowerUsagePage> createState() => _PowerUsagePageState();
}

class _PowerUsagePageState extends State<PowerUsagePage> {
  int _currentIndex = 2;

  final List<ChartData> chartData = [
    ChartData('Mon', 120),
    ChartData('Tue', 240),
    ChartData('Wed', 106),
    ChartData('Thu', 97),
    ChartData('Fri', 100),
    ChartData('Sat', 150),
    ChartData('Sun', 145),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff4c7380),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
      appBar: const PowerUsagePageAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Usage this Week',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.07,
                      color: Color(0xffd8e4e8),
                    ),
                  ),
                  Text(
                    '2500 watt',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.08,
                      color: Color(0xffd8e4e8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              PowerUsageLineChart(data: chartData),
            ],
          ),
        ),
      ),
    );
  }
}
