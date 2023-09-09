import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';

class AuthMainBody extends StatelessWidget {
  final IconData iconData;
  final Widget body;
  final double? iconSize;
  const AuthMainBody({
    super.key,
    required this.iconData,
    required this.body,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Scaffold(
            appBar: customAppbar(context: context),
            body: body,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: screenWidth(context) * 0.14,
            child: CircleAvatar(
              backgroundColor: const Color(0xff5C99B6),
              radius: screenWidth(context) * 0.12,
              child: Center(
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: iconSize ?? screenWidth(context) * 0.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
