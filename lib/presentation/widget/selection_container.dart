import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/text_theme.dart';

import '../../core/constants/constants.dart';

class SelectionContainerItem extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double? width;
  const SelectionContainerItem({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? screenWidth(context) * 0.35,
      height: screenHeight(context) * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth(context) * 0.05),
        color: const Color(0xffF5FBFF),
        border: Border.all(
          color: backgroundColor,
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: bodyStryle(
            context: context,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
