import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class AuthWelcomMessage extends StatelessWidget {
  final String title;
  final String subtitle;
  const AuthWelcomMessage(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            title,
            style: headingStyle1(
              context: context,
              color: kMainColor,
            ).copyWith(
              fontSize: screenWidth(context) * 0.06,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const VerticalSpace(value: 1),
        Center(
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: headingStyle1(
              context: context,
              color: textGrey2,
            ).copyWith(
              fontSize: screenWidth(context) * 0.04,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
