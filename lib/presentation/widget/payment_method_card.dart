import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class PaymentMethodCardItem extends StatelessWidget {
  final String text;
  final bool isCash;
  final Widget radio;
  final IconData iconData;
  const PaymentMethodCardItem({
    super.key,
    required this.text,
    required this.isCash,
    required this.radio,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth(context) * 0.03,
        vertical: screenHeight(context) * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          screenWidth(context) * 0.05,
        ),
        border: Border.all(
          color: textBorderColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  radio,
                  Text(
                    text,
                    style: headingStyle2(
                      context: context,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
              Icon(
                iconData,
                color: textGrey2,
              ),
            ],
          ),
          (isCash) ? const VerticalSpace(value: 1) : const SizedBox(),
          (isCash)
              ? SizedBox(
                  width: screenWidth(context) * 0.7,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consecte turadipiscing elit, sed do eiusmod tempor",
                    style: bodyStryle(
                      context: context,
                      color: textGrey2,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
