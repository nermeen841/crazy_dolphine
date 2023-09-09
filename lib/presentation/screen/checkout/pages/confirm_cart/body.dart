import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/widget/body_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/presentation/widget/payment_method_card.dart';

class ConfirmCartBody extends StatefulWidget {
  const ConfirmCartBody({super.key});

  @override
  State<ConfirmCartBody> createState() => _ConfirmCartBodyState();
}

class _ConfirmCartBodyState extends State<ConfirmCartBody> {
  int? iscash;
  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.04,
          vertical: screenHeight(context) * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.PAYMENT_TYPE.tr(),
              style: headingStyle1(
                context: context,
                color: kMainColor,
              ),
            ),
            const VerticalSpace(value: 2),
            PaymentMethodCardItem(
              iconData: Icons.money,
              text: LocaleKeys.CASH.tr(),
              isCash: true,
              radio: Radio(
                value: 1,
                groupValue: iscash ?? 0,
                activeColor: buttonColor,
                onChanged: (value) {
                  setState(() {
                    iscash = 1;
                  });
                },
              ),
            ),
            const VerticalSpace(value: 3),
            PaymentMethodCardItem(
              iconData: Icons.credit_card,
              text: LocaleKeys.VISA.tr(),
              isCash: false,
              radio: Radio(
                value: 2,
                groupValue: iscash ?? 0,
                activeColor: buttonColor,
                onChanged: (value) {
                  setState(() {
                    iscash = 2;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
