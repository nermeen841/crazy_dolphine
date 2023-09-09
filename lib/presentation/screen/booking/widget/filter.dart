import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/screen/booking/widget/filter_body.dart';
import 'package:padle_me/presentation/screen/booking/widget/selection_body.dart';

class FilterSortItem extends StatelessWidget {
  const FilterSortItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => homeBottomSheet(
            context: context,
            child: const SortBody(),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.sort,
                color: colorBlue,
              ),
              const HorizontalSpace(value: 0.7),
              Text(
                LocaleKeys.SORT.tr(),
                style: bodyStryle(
                  context: context,
                  color: colorBlue,
                ).copyWith(
                  fontSize: screenWidth(context) * 0.05,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => homeBottomSheet(
            context: context,
            child: const FilterBody(),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.tune,
                color: colorBlue,
              ),
              const HorizontalSpace(value: 0.7),
              Text(
                LocaleKeys.FILTER.tr(),
                style: bodyStryle(
                  context: context,
                  color: colorBlue,
                ).copyWith(
                  fontSize: screenWidth(context) * 0.05,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
