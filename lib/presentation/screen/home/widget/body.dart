import 'package:flutter/material.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/presentation/screen/home/widget/category.dart';
import 'package:padle_me/presentation/screen/home/widget/home_slider.dart';
import 'package:padle_me/presentation/screen/home/widget/welcom_message.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeSliderWidget(),
          const VerticalSpace(value: 2),
          const WelcomeMessageItem(),
          const VerticalSpace(value: 2),
          HomeCategoryItem(),
        ],
      ),
    );
  }
}
