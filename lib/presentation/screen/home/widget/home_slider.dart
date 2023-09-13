import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import '../../../../core/constants/constants.dart';

class HomeSliderWidget extends StatelessWidget {
  HomeSliderWidget({super.key});

  List<String> images = [
    "https://img.freepik.com/free-photo/full-shot-man-swimming-with-fish_23-2149126867.jpg?w=360&t=st=1694460494~exp=1694461094~hmac=72bd8f6caf263a26c1ce3049f97a0b817faf6b77920be9c63615dfc7c0d8b52b",
    "https://img.freepik.com/free-photo/full-shot-swimming-with-fish_23-2149126866.jpg?w=360&t=st=1694460522~exp=1694461122~hmac=ad27cb9d413e7299d0a556f4a138c8fc1fc3da36cbb5192470d056c621929153",
    "https://img.freepik.com/free-photo/woman-bottom-professional-body-adult_1253-354.jpg?w=740&t=st=1694460553~exp=1694461153~hmac=2b7e895a12c6ab8133a60b147aaff2658a2c137ef382bd6bc8efd0c10606ef22",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.4,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Swiper(
            pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: Colors.grey,
                  size: 6,
                  activeSize: 6,
                  activeColor: Color(0xff6E6E6E),
                ),
                alignment: Alignment.bottomCenter),
            itemBuilder: (BuildContext context, int i) =>
                customCachedNetworkImage(
              url: images[i],
              context: context,
              fit: BoxFit.cover,
            ),
            itemCount: images.length,
            autoplay: true,
            autoplayDelay: 4000,
          ),
          Text(
            "Crazy Dolphine",
            style: headingStyle1(
              context: context,
              color: Colors.white60,
            ).copyWith(
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
