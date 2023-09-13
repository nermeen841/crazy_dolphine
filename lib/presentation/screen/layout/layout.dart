import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/presentation/screen/home/home.dart';
import 'package:padle_me/presentation/screen/program/program.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const ProgramScreen(),
    Container(),
    Container(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        elevation: 0,
        selectedItemColor: kMainColor,
        unselectedItemColor: const Color(0xff9B9B9B),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: bodyStryle(
          context: context,
          color: kMainColor,
        ),
        unselectedLabelStyle: bodyStryle(
          context: context,
          color: const Color(0xff9B9B9B),
        ),
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.list_bullet_below_rectangle),
            label: "program",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.storefront),
            label: "Booking",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu),
            label: "more",
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
