import 'package:flutter/material.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/text_theme.dart';
import '../../../../core/widgets/space_widget.dart';

class ProgramDetailsCard extends StatelessWidget {
  const ProgramDetailsCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.2,
      width: screenWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.scuba_diving_sharp,
            color: Colors.white,
          ),
          VerticalSpace(value: 2),
          Text(
            title,
            style: headingStyle1(context: context, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
