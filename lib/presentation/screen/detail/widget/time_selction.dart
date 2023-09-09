import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';

class TimeSelectionItem extends StatefulWidget {
  const TimeSelectionItem({super.key});

  @override
  State<TimeSelectionItem> createState() => _TimeSelectionItemState();
}

class _TimeSelectionItemState extends State<TimeSelectionItem> {
  int? selectedTime;
  List<String> times = [
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "1:00 PM",
    "2:00 PM",
    "3:00 PM",
    "4:00 PM",
    "5:00 PM",
    "6:00 PM",
    "7:00 PM",
    "8:00 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: times.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () => setState(() {
          selectedTime = index;
        }),
        child: Container(
          width: screenWidth(context) * 0.35,
          height: screenHeight(context) * 0.07,
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth(context) * 0.02,
          ),
          decoration: BoxDecoration(
            color: (selectedTime == index) ? selectionColor : Colors.white,
            borderRadius: BorderRadius.circular(screenWidth(context) * 0.03),
            border: Border.all(
              color: (selectedTime == index) ? Colors.transparent : textGrey2,
            ),
          ),
          child: Center(
            child: Text(
              times[index],
              textAlign: TextAlign.center,
              style: bodyStryle(
                  context: context,
                  color: (selectedTime == index) ? Colors.white : textGrey2),
            ),
          ),
        ),
      ),
    );
  }
}
