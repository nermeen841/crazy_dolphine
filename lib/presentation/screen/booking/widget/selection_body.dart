import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/utiles/cubit/app_cubit.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/widget/filter_header.dart';
import 'package:padle_me/presentation/widget/selection_container.dart';
import 'package:easy_localization/easy_localization.dart';

class SortBody extends StatelessWidget {
  const SortBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FilterHeaderItem(
            title: LocaleKeys.SORT.tr(),
          ),
          const VerticalSpace(value: 4),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * 0.04,
            ),
            child: BlocConsumer<AppCubit, AppState>(
              listener: (context, state) {},
              bloc: GetIt.I<AppCubit>(),
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () =>
                          GetIt.I<AppCubit>().priceRangeSelection(false),
                      child: SelectionContainerItem(
                        width: double.infinity,
                        text: LocaleKeys.HIGH_PRICE.tr(),
                        backgroundColor:
                            (GetIt.I<AppCubit>().pricerange == false)
                                ? selectionColor
                                : Colors.white,
                        borderColor: (GetIt.I<AppCubit>().pricerange == false)
                            ? Colors.transparent
                            : textGrey2,
                        textColor: (GetIt.I<AppCubit>().pricerange == false)
                            ? Colors.white
                            : kMainColor,
                      ),
                    ),
                    const VerticalSpace(value: 3),
                    InkWell(
                      onTap: () =>
                          GetIt.I<AppCubit>().priceRangeSelection(true),
                      child: SelectionContainerItem(
                        width: double.infinity,
                        text: LocaleKeys.LOW_PRICE.tr(),
                        backgroundColor:
                            (GetIt.I<AppCubit>().pricerange == true)
                                ? selectionColor
                                : Colors.white,
                        borderColor: (GetIt.I<AppCubit>().pricerange == true)
                            ? Colors.transparent
                            : textGrey2,
                        textColor: (GetIt.I<AppCubit>().pricerange == true)
                            ? Colors.white
                            : kMainColor,
                      ),
                    ),
                    const VerticalSpace(value: 4),
                    CustomGeneralButton(
                      text: LocaleKeys.APPLY.tr(),
                      onTap: () {},
                    ),
                    const VerticalSpace(value: 4),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
