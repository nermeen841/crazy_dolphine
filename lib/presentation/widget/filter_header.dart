import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/router/router.dart';

class FilterHeaderItem extends StatelessWidget {
  final String title;
  const FilterHeaderItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight(context) * 0.08,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth(context) * 0.02,
      ),
      decoration: BoxDecoration(
        color: filterHeaderColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            screenWidth(context) * 0.02,
          ),
          topRight: Radius.circular(
            screenWidth(context) * 0.02,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.restart_alt_sharp,
              color: colorBlue,
            ),
            onPressed: () {},
          ),
          Text(
            title,
            style: headingStyle2(context: context, color: kMainColor),
          ),
          IconButton(
            icon: Icon(
              Icons.clear,
              color: colorBlue,
            ),
            onPressed: () => MagicRouter.pop(),
          ),
        ],
      ),
    );
  }
}
