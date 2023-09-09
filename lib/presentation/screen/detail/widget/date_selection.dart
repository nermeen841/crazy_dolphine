import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class DateSelectionItem extends StatefulWidget {
  const DateSelectionItem({super.key});

  @override
  State<DateSelectionItem> createState() => _DateSelectionItemState();
}

class _DateSelectionItemState extends State<DateSelectionItem> {
  int? selectedDate;
  List<String> days = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];
  List<String> date = [
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          date.length,
          (index) => InkWell(
            onTap: () => setState(() {
              selectedDate = index;
            }),
            child: Container(
              width: screenWidth(context) * 0.15,
              height: screenHeight(context) * 0.12,
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * 0.02,
              ),
              decoration: BoxDecoration(
                color: (selectedDate == index) ? selectionColor : Colors.white,
                borderRadius:
                    BorderRadius.circular(screenWidth(context) * 0.03),
                border: Border.all(
                  color:
                      (selectedDate == index) ? Colors.transparent : textGrey2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date[index],
                    style: bodyStryle(
                        context: context,
                        color:
                            (selectedDate == index) ? Colors.white : textGrey2),
                  ),
                  const VerticalSpace(value: 1),
                  Text(
                    days[index],
                    style: bodyStryle(
                        context: context,
                        color:
                            (selectedDate == index) ? Colors.white : textGrey2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
