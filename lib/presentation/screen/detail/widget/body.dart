import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/screen/checkout/checkout.dart';
import 'package:padle_me/presentation/screen/detail/widget/date_selection.dart';
import 'package:padle_me/presentation/screen/detail/widget/paddle_image.dart';
import 'package:padle_me/presentation/screen/detail/widget/time_selction.dart';
import 'package:padle_me/presentation/widget/body_container.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({super.key});

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const PaddleImageDetailItem(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight(context) * 0.02,
                horizontal: screenWidth(context) * 0.04,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Court 1",
                            style: headingStyle1(
                              context: context,
                              color: kMainColor,
                            ),
                          ),
                          Text(
                            "30 JD",
                            style: headingStyle1(
                              context: context,
                              color: kMainColor,
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpace(value: 0.7),
                      Row(
                        children: [
                          Icon(
                            Icons.supervisor_account_sharp,
                            color: selectionColor,
                          ),
                          const HorizontalSpace(value: 0.7),
                          Text(
                            "50",
                            style: bodyStryle(
                              context: context,
                              color: greyIcon,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const VerticalSpace(value: 3),
                  Text(
                    LocaleKeys.DATE.tr(),
                    style: headingStyle1(
                      context: context,
                      color: kMainColor,
                    ),
                  ),
                  const VerticalSpace(value: 1),
                  const DateSelectionItem(),
                  const VerticalSpace(value: 3),
                  Text(
                    LocaleKeys.TIME.tr(),
                    style: headingStyle1(
                      context: context,
                      color: kMainColor,
                    ),
                  ),
                  const VerticalSpace(value: 1),
                  const TimeSelectionItem(),
                  const VerticalSpace(value: 4),
                  CustomGeneralButton(
                    text: LocaleKeys.APPLY.tr(),
                    onTap: () => MagicRouter.navigateTo(const CheckoutScreen()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
