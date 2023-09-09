import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';

class BodyContainerStyle extends StatelessWidget {
  final Widget child;
  const BodyContainerStyle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            screenWidth(context) * 0.07,
          ),
          topRight: Radius.circular(
            screenWidth(context) * 0.07,
          ),
        ),
      ),
      child: child,
    );
  }
}
