import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';

class HomeCategoryItem extends StatelessWidget {
  HomeCategoryItem({super.key});

  List<String> images = [
    "https://img.freepik.com/free-photo/beautiful-fish-swimming-around-corals-sea_181624-10112.jpg?w=740&t=st=1694461943~exp=1694462543~hmac=2d7b9463b0904c59ef853f2a493aea0f194ca470b1156b6fa84c0c4f2e4d7978",
    "https://img.freepik.com/free-photo/vertical-shot-male-swimming-underwater-with-sky-background_181624-1545.jpg?w=360&t=st=1694461961~exp=1694462561~hmac=b9859512f96431f3db2ebf5747bf995d03c13dc0b446683b1cb2257cc31c8c20",
    "https://img.freepik.com/premium-photo/turtle-corals-red-sea-generative-ai-generative-ai_170984-6961.jpg?w=740",
    "https://img.freepik.com/premium-photo/red-sea-africa-october-2015-scuba-divers-explore-sunken-ships-bottom-sea-marine-life-underwater-blue-ocean-observation-animal-world-scuba-diving-adventure-red-sea_289152-2068.jpg?w=740",
    "https://img.freepik.com/free-photo/ocean-pollution-campaign-with-whale-swimming-with-plastic-bags-floating_53876-124604.jpg?w=740&t=st=1694462037~exp=1694462637~hmac=3a58aced2e9bf00de9c98f4008d2ddc2e0c7b918a22ffa4657569340bb084e4d",
    "https://img.freepik.com/premium-photo/loving-couple-dives-among-corals-fishes-ocean_104263-1066.jpg?w=740",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context) * 0.02,
        horizontal: screenWidth(context) * 0.02,
      ),
      child: Wrap(
        runSpacing: 15,
        spacing: 15,
        children: List.generate(
          images.length,
          (index) => SizedBox(
            width: screenWidth(context) * 0.45,
            height: screenHeight(context) * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth(context) * 0.03),
              child: customCachedNetworkImage(
                url: images[index],
                context: context,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
