import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class PadleCard extends StatelessWidget {
  const PadleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth(context) * 0.4,
          height: screenHeight(context) * 0.15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(screenWidth(context) * 0.05),
            child: customCachedNetworkImage(
              url:
                  "https://img.freepik.com/free-photo/tennis-paddles-balls-arrangement_23-2149434236.jpg?w=360&t=st=1691220182~exp=1691220782~hmac=fdcd8c112da11240d1801ac7184651c8eae4ab8971116f9e36c9e6d71b875cac",
              context: context,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const VerticalSpace(value: 1),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "30 JD",
              style: headingStyle1(
                context: context,
                color: kMainColor,
              ),
            ),
            const VerticalSpace(value: 1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Court 1",
                  style: bodyStryle(
                    context: context,
                    color: kMainColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.supervisor_account_sharp,
                      color: selectionColor,
                    ),
                    const HorizontalSpace(value: 0.7),
                    Text(
                      "50",
                      style: bodyStryle(
                        context: context,
                        color: greyIcon,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
