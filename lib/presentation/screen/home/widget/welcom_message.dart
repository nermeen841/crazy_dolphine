import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class WelcomeMessageItem extends StatelessWidget {
  const WelcomeMessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context) * 0.02,
        horizontal: screenWidth(context) * 0.02,
      ),
      margin: EdgeInsets.symmetric(
        vertical: screenHeight(context) * 0.02,
        horizontal: screenWidth(context) * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenWidth(context) * 0.03),
        boxShadow: [
          BoxShadow(
            color: colorGreyLight.withOpacity(0.3),
            offset: const Offset(0, 2),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: headingStyle1(
              context: context,
              color: kMainColor,
            ),
          ),
          const VerticalSpace(value: 2),
          Wrap(
            children: [
              Text(
                "Welcome to Crazy Dolphin Aqua and Diving Center! We are the team of like-minded professionals,offering you a full range of diving trips and courses, snorkeling and watersport activities.For many years, thousands of visitors have been delighted by the service, provided by our diving center.Here we don't say goodbyes, we just say See you later.",
                style: bodyStryle2(
                  context: context,
                  color: textcolor.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
