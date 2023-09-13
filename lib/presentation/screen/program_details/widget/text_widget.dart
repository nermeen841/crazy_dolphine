import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/constants/text_theme.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: headingStyle2(context: context, color: Colors.white70)
          .copyWith(height: 1.2),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.mainText});
  final String mainText;

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText,
      style: headingStyle1(context: context, color: Colors.amber),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({super.key, required this.subTitle});
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: headingStyle1(context: context, color: Colors.white),
    );
  }
}
