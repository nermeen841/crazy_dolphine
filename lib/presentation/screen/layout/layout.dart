import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/presentation/screen/booking/booking.dart';

import 'widget/drawer.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screens = [
    Container(),
    const BookingScreen(),
    Container(),
    Container(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: layoutAppbar(() => scaffoldKey.currentState!.openDrawer()),
      drawer: const DrawerItem(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        elevation: 0,
        selectedItemColor: buttonColor,
        unselectedItemColor: const Color(0xff9B9B9B),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: bodyStryle(
          context: context,
          color: buttonColor,
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
            icon: const Icon(Icons.star_border),
            label: LocaleKeys.POINTS.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.sports_tennis_outlined),
            label: LocaleKeys.BOOKING.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.storefront),
            label: LocaleKeys.STORE.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.card_membership),
            label: LocaleKeys.MEMBERSHIP.tr(),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
