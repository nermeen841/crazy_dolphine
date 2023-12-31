import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';

ThemeData themeData = ThemeData(
  primaryColor: const Color(0xff133959),
  primarySwatch: Colors.blue,
  timePickerTheme: TimePickerThemeData(
    backgroundColor: Colors.white,
    hourMinuteShape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      side: BorderSide(
          color: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.selected)
                ? kMainColor
                : textFormFieldColor,
          ),
          width: 4),
    ),
    dayPeriodBorderSide: BorderSide(
      color: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? Colors.transparent
            : textFormFieldColor,
      ),
    ),
    dayPeriodColor: MaterialStateColor.resolveWith(
      (states) =>
          states.contains(MaterialState.selected) ? kMainColor : Colors.white,
    ),
    dayPeriodTextColor: MaterialStateColor.resolveWith(
      (states) =>
          states.contains(MaterialState.selected) ? Colors.white : Colors.black,
    ),
    dayPeriodShape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      side: BorderSide(color: kMainColor, width: 4),
    ),
    hourMinuteColor: MaterialStateColor.resolveWith(
      (states) =>
          states.contains(MaterialState.selected) ? kMainColor : Colors.black87,
    ),
    hourMinuteTextColor: MaterialStateColor.resolveWith(
      (states) => states.contains(MaterialState.selected)
          ? Colors.black87
          : Colors.black87,
    ),
    dialHandColor: Colors.blueGrey.shade700,
    dialBackgroundColor: Colors.blueGrey.shade800,
    hourMinuteTextStyle:
        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    dayPeriodTextStyle:
        const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    helpTextStyle: const TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: BorderSide(color: kMainColor),
      ),
      contentPadding: const EdgeInsets.all(0),
    ),
    dialTextColor: MaterialStateColor.resolveWith((states) =>
        states.contains(MaterialState.selected) ? kMainColor : Colors.white),
    entryModeIconColor: kMainColor,
  ),
  fontFamily: "Mulish",
  scaffoldBackgroundColor: colorWhite,
  backgroundColor: colorWhite,
  appBarTheme: AppBarTheme(
    backgroundColor: colorWhite,
  ),
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: Colors.white),
);
