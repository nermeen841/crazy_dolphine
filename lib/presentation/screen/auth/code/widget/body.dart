import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/presentation/widget/body_container.dart';

import '../../../../widget/auth_welcome_message.dart';

class CodeBody extends StatelessWidget {
  const CodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenHeight(context) * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AuthWelcomMessage(
              title: "Security Code",
              subtitle: "We've sent code to \n hebaM@digi.com",
            ),
          ],
        ),
      ),
    );
  }
}
