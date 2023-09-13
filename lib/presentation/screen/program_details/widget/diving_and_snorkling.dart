import 'package:flutter/cupertino.dart';
import 'package:padle_me/presentation/screen/program_details/widget/program_card.dart';
import 'package:padle_me/presentation/screen/program_details/widget/text_widget.dart';

import '../../../../core/widgets/space_widget.dart';

class DivingAndSnorkling extends StatelessWidget {
  const DivingAndSnorkling(
      {super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == 'Diving')
            ? const SubTitle(subTitle: 'Diving is exciting')
            : const SubTitle(subTitle: 'Enjoy the snorkeling'),
        const VerticalSpace(value: 1),
        (title == 'Diving')
            ? const TextWidget(
                text:
                    'Diving is fun and exciting. It`s an easy activity that, from the moment you are in, you want to repeat it over and over again. For that reason we make sure that if you are diving with us, you only have to enjoy it! Diving Center Crazy Dolphin offers professional diving services with traditional Egyptian hospitality. There is wide range of diving activities - both for beginners and certified divers: introduction dive , daily diving and dive courses (PADI, NDL). Don`t forget to try night dives , wreck and house reef with us which you will find pretty fascinating! Safari/mini safari diving is the adventure of lifetime. Make it happen with Crazy Dolphin! All our boats start from marina beside our diving center. We pick up our guests from any place. We take care of all the details.')
            : const TextWidget(
                text:
                    'Snorkeling is a wonderful opportunity to observe the underwater life of the Red sea in its natural setting. Our snorkelers are accompanied in water with our highly experienced snorkel guides. We offer sea trips to the island , trip to Dolphin house , fishing trip , glass bottom boat trips. To enjoy your privacy in the trip together with your friends and family, we offer a private trip with snorkeling, fishing, diving – according to your needs.'),
        const VerticalSpace(value: 2),
        ProgramDetailsCard(image: image, title: title),
        const VerticalSpace(value: 2),
        (title == 'Diving')
            ? const TextWidget(
                text:
                    'Introduction dive Intro Dive is for beginners and non-swimmers. Just try it with us and diving is no longer scary for you! Our professional instructor will take you underwater in total safety. You don’t need to worry about anything, just enjoy the experience of breathing under the water for the first time.Intro Dive is non-certification dive. It is made from boat or beach, or house reef.')
            : const TextWidget(
                text:
                    "Dolphin house Trip over the Red sea to spot and swim with wild dolphins. Dolphin house is an area, known for its high density of wild dolphins. Watch them in their natural habitat and take a swim: with luck, they may play beside you. At the trip snorkel around the corals or sunbathe on the deck – the choice is yours."),
        const VerticalSpace(value: 2),
        ProgramDetailsCard(image: image, title: title),
        const VerticalSpace(value: 2),
        (title == 'Diving')
            ? const TextWidget(
                text:
                    'Daily divingDuring daily diving trips you will be able to observe great variety of marina life, to enjoy the picturesque landscapes.Daily diving includes 2 dives at different sites, lunch from our chef, non-alcoholic drinks, instructor and equipment. We have everything to make your day a memorable one.',
              )
            : const TextWidget(
                text:
                    'Island Enjoy the day exploring Giftun or Paradise island with snorkeling or diving. Relax at the white sands and turquoise waters and join the boat trip for more snorkeling at stunning nearby reefs.'),
      ],
    );
  }
}
