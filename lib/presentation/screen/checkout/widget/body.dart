import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/presentation/widget/body_container.dart';
import 'package:padle_me/presentation/widget/cart_item.dart';

class CheckoutBody extends StatefulWidget {
  const CheckoutBody({super.key});

  @override
  State<CheckoutBody> createState() => _CheckoutBodyState();
}

class _CheckoutBodyState extends State<CheckoutBody> {
  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight(context) * 0.02,
          horizontal: screenWidth(context) * 0.04,
        ),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, int index) => const CartItemWidget(),
        separatorBuilder: (BuildContext context, int index) => Column(
          children: [
            const VerticalSpace(value: 1),
            Divider(
              color: textBorderColor,
            ),
            const VerticalSpace(value: 1),
          ],
        ),
      ),
    );
  }
}
