import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/text_theme.dart';

import '../../../../core/constants/constants.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});
  final String image;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: screenHeight(context) * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.fitWidth)),
        child: Center(
          child: Text(
            title,
            style: headingStyle1(context: context, color: Colors.white)
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
