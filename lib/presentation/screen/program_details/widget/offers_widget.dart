import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';

class OffersWidget extends StatelessWidget {
  List<String> images = [
    'https://www.crazy-dolphin.com/pics/2018-03-23-17-14-51.webp',
    'https://www.crazy-dolphin.com/pics/2018-03-23-17-08-41.webp',
    'https://www.crazy-dolphin.com/pics/2018-03-23-17-03-04.webp',
    'https://www.crazy-dolphin.com/pics/2018-03-23-16-57-35.webp'
  ];
  List<String> text = [
    'Free transportation',
    'Airport transfer',
    'Dive & Discount',
    'Dive & Stay',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover)),
                ),
                const VerticalSpace(value: 1),
                Center(
                  child: Text(text[index],
                      style:
                          headingStyle1(context: context, color: Colors.white)),
                ),
              ],
            ),
        separatorBuilder: (context, index) => const VerticalSpace(value: 1),
        itemCount: images.length);
  }
}
