import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/presentation/screen/program/widget/program_card.dart';

import '../../program_details/program_details.dart';

class ProgramBody extends StatefulWidget {
  const ProgramBody({super.key});

  @override
  State<ProgramBody> createState() => _ProgramBodyState();
}

class _ProgramBodyState extends State<ProgramBody> {
  List<String> programTitles = [
    'Diving',
    "Snorkeling",
    "Special Offers",
    "prices"
  ];

  List<String> programImages = [
    'https://img.freepik.com/free-photo/mask-snorkel-diving-beach_1150-10335.jpg?w=740&t=st=1694561860~exp=1694562460~hmac=e3ed02572b9ad9bb959757f08252a8010b6f18bedaddb5bdad5fe759c53872af',
    "https://img.freepik.com/free-photo/woman-bottom-professional-body-adult_1253-354.jpg?size=626&ext=jpg&ga=GA1.1.1193666936.1645267385&semt=sph",
    "https://img.freepik.com/free-vector/diving-hand-drawn-flat-twitter-header_23-2149435143.jpg?size=626&ext=jpg&ga=GA1.2.1193666936.1645267385&semt=ais",
    "https://img.freepik.com/premium-vector/summer-sale-promotion-banner-special-offer-discount-template-flat-design_184750-24.jpg?size=626&ext=jpg&ga=GA1.2.1193666936.1645267385&semt=ais"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context) * 0.02,
        horizontal: screenWidth(context) * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalSpace(value: 2),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => ProgramCard(
                    image: programImages[index],
                    title: programTitles[index],
                    onTap: () => {
                      MagicRouter.navigateTo(ProgramDetailsScreen(
                        image: (index == 0)
                            ? programImages[0]
                            : (index == 1)
                                ? programImages[1]
                                : (index == 2)
                                    ? programImages[2]
                                    : programImages[3],
                        title: (index == 0)
                            ? programTitles[0]
                            : (index == 1)
                                ? programTitles[1]
                                : (index == 2)
                                    ? programTitles[2]
                                    : programTitles[3],
                      )),
                    },
                  ),
              separatorBuilder: (context, index) =>
                  const VerticalSpace(value: 2),
              itemCount: programTitles.length)
        ],
      ),
    );
  }
}
