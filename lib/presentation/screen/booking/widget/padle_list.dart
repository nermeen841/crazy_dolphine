import 'package:flutter/material.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/presentation/screen/detail/detail.dart';
import 'package:padle_me/presentation/widget/padle_card.dart';

class PadleListItem extends StatelessWidget {
  const PadleListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 30,
        childAspectRatio: 0.8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => InkWell(
        onTap: () => MagicRouter.navigateTo(const DetailScreen()),
        child: const PadleCard(),
      ),
    );
  }
}
