import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/screen/checkout/pages/confirm_cart/body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/presentation/screen/layout/layout.dart';

class ConfirmCartScreen extends StatefulWidget {
  const ConfirmCartScreen({super.key});

  @override
  State<ConfirmCartScreen> createState() => _ConfirmCartScreenState();
}

class _ConfirmCartScreenState extends State<ConfirmCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutAppbar(() => scaffoldKey.currentState!.openDrawer()),
      body: const ConfirmCartBody(),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: screenHeight(context) * 0.15,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.03,
          vertical: screenHeight(context) * 0.015,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.TOTAL.tr(),
                  style: headingStyle2(
                    context: context,
                    color: kMainColor,
                  ),
                ),
                const VerticalSpace(value: 0.7),
                Text(
                  "180 JD",
                  style: headingStyle1(
                    context: context,
                    color: buttonColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: screenWidth(context) * 0.7,
              child: CustomGeneralButton(
                text: LocaleKeys.CONFIRM.tr(),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
