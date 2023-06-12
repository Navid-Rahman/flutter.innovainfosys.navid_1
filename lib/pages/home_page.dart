import 'package:flutter/material.dart';
import 'package:flutter_innovainfosys_navid_1/constants/assets.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/weather_ticket_container.dart';
import 'package:flutter_innovainfosys_navid_1/widgets/bottom_navigationbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_innovainfosys_navid_1/home_page_utils/rooms_widget.dart';
import '../widgets/home_appbar.dart';

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
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
      appBar: const HomeAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              // Greetings Row Container
              //buildGreetingsContainer(),

              // Weather Ticket Container
              buildWeatherTicketContainer(context),

              const RoomsWidget(),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              Assets.cloud1,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              Assets.cloud2,
            ),
          ),
          Positioned(
            top: 250,
            right: 0,
            child: SvgPicture.asset(
              Assets.sun,
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
