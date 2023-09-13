import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/presentation/screen/program_details/widget/offers_widget.dart';
import 'package:padle_me/presentation/screen/program_details/widget/program_card.dart';
import 'package:padle_me/presentation/screen/program_details/widget/text_widget.dart';

import '../../../../core/widgets/space_widget.dart';
import 'diving_and_snorkling.dart';

class ProgramDetailsBody extends StatefulWidget {
  const ProgramDetailsBody(
      {super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  State<ProgramDetailsBody> createState() => _ProgramDetailsBodyState();
}

class _ProgramDetailsBodyState extends State<ProgramDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      height: screenHeight(context),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://www.crazy-dolphin.com/pics/2017-12-31-03-22-50.webp',
              ),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 5),
            (widget.title == 'Diving')
                ? const Center(
                    child: MainTitle(mainText: 'Diving With Crazy Dolphin'))
                : (widget.title == 'Snorkeling')
                    ? const Center(
                        child: MainTitle(
                            mainText: 'Snorkeling With Crazy Dolphin'))
                    : (widget.title == 'Special Offers')
                        ? const Center(
                            child: MainTitle(mainText: 'Special Offers'))
                        : const Center(
                            child: MainTitle(mainText: 'Crazy Dolphin Prices')),
            const VerticalSpace(value: 1),
            (widget.title == 'Diving' || widget.title == 'Snorkeling')
                ? DivingAndSnorkling(image: widget.image, title: widget.title)
                : (widget.title == 'Special Offers')
                    ? OffersWidget()
                    : Padding(
                        padding: EdgeInsets.symmetric(
                            // horizontal: screenWidth(context) * 0.05,
                            vertical: screenHeight(context) * 0.01),
                        child: Column(
                          children: [
                            ProgramDetailsCard(
                                image: widget.image, title: widget.title),
                            VerticalSpace(value: 45),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth(context) * 0.04),
                              child: CustomGeneralButton(
                                  text: "DOWNLOAD PRICE LIST",
                                  color: Colors.yellow.shade700,
                                  textColor: Colors.black,
                                  onTap: () {}),
                            ),
                          ],
                        ),
                      ),
            const VerticalSpace(value: 1),
          ],
        ),
      ),
    );
  }
}
