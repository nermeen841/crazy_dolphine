import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/utiles/cubit/app_cubit.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/custom_drop_down.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/widget/filter_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/presentation/widget/selection_container.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FilterHeaderItem(
            title: LocaleKeys.FILTER.tr(),
          ),
          const VerticalSpace(value: 4),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context) * 0.03,
            ),
            child: BlocConsumer<AppCubit, AppState>(
              listener: (context, state) {},
              bloc: GetIt.I<AppCubit>(),
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.TYPE.tr(),
                      style: bodyStryle(
                        context: context,
                        color: greyText,
                      ),
                    ),
                    const VerticalSpace(value: 1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => GetIt.I<AppCubit>().changetoggle(false),
                          child: SelectionContainerItem(
                            width: screenWidth(context) * 0.45,
                            backgroundColor:
                                (GetIt.I<AppCubit>().outdoorSelection == false)
                                    ? selectionColor
                                    : Colors.white,
                            borderColor:
                                (GetIt.I<AppCubit>().outdoorSelection == false)
                                    ? Colors.transparent
                                    : textGrey2,
                            text: LocaleKeys.INDOOR.tr(),
                            textColor:
                                (GetIt.I<AppCubit>().outdoorSelection == false)
                                    ? Colors.white
                                    : kMainColor,
                          ),
                        ),
                        InkWell(
                          onTap: () => GetIt.I<AppCubit>().changetoggle(true),
                          child: SelectionContainerItem(
                            width: screenWidth(context) * 0.45,
                            backgroundColor:
                                (GetIt.I<AppCubit>().outdoorSelection == true)
                                    ? selectionColor
                                    : Colors.white,
                            borderColor:
                                (GetIt.I<AppCubit>().outdoorSelection == true)
                                    ? Colors.transparent
                                    : textGrey2,
                            text: LocaleKeys.OUTDOOR.tr(),
                            textColor:
                                (GetIt.I<AppCubit>().outdoorSelection == true)
                                    ? Colors.white
                                    : kMainColor,
                          ),
                        ),
                      ],
                    ),
                    const VerticalSpace(value: 2),
                    Text(
                      LocaleKeys.INTERVAL.tr(),
                      style: bodyStryle(
                        context: context,
                        color: greyText,
                      ),
                    ),
                    const VerticalSpace(value: 1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () =>
                              GetIt.I<AppCubit>().intervaltimeSelection(0),
                          child: SelectionContainerItem(
                            width: screenWidth(context) * 0.25,
                            backgroundColor:
                                (GetIt.I<AppCubit>().timeSelection == 0)
                                    ? selectionColor
                                    : Colors.white,
                            borderColor:
                                (GetIt.I<AppCubit>().timeSelection == 0)
                                    ? Colors.transparent
                                    : textGrey2,
                            text: "60 min",
                            textColor: (GetIt.I<AppCubit>().timeSelection == 0)
                                ? Colors.white
                                : kMainColor,
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              GetIt.I<AppCubit>().intervaltimeSelection(1),
                          child: SelectionContainerItem(
                            width: screenWidth(context) * 0.25,
                            backgroundColor:
                                (GetIt.I<AppCubit>().timeSelection == 1)
                                    ? selectionColor
                                    : Colors.white,
                            borderColor:
                                (GetIt.I<AppCubit>().timeSelection == 1)
                                    ? Colors.transparent
                                    : textGrey2,
                            text: "90 min",
                            textColor: (GetIt.I<AppCubit>().timeSelection == 1)
                                ? Colors.white
                                : kMainColor,
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              GetIt.I<AppCubit>().intervaltimeSelection(2),
                          child: SelectionContainerItem(
                            width: screenWidth(context) * 0.25,
                            backgroundColor:
                                (GetIt.I<AppCubit>().timeSelection == 2)
                                    ? selectionColor
                                    : Colors.white,
                            borderColor:
                                (GetIt.I<AppCubit>().timeSelection == 2)
                                    ? Colors.transparent
                                    : textGrey2,
                            text: "120 min",
                            textColor: (GetIt.I<AppCubit>().timeSelection == 2)
                                ? Colors.white
                                : kMainColor,
                          ),
                        ),
                      ],
                    ),
                    const VerticalSpace(value: 2),
                    Text(
                      LocaleKeys.TIME_RANGE.tr(),
                      style: bodyStryle(
                        context: context,
                        color: greyText,
                      ),
                    ),
                    const VerticalSpace(value: 1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: screenWidth(context) * 0.4,
                          child: CustomGeneralDropDown(
                            borderColor: Colors.transparent,
                            fillColor: textFormFieldColor,
                            text: "14:00",
                            iconData: Icons.watch_later_outlined,
                            items: const [],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: greyIcon,
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.4,
                          child: CustomGeneralDropDown(
                            borderColor: Colors.transparent,
                            fillColor: textFormFieldColor,
                            text: "18:00",
                            iconData: Icons.watch_later_outlined,
                            items: const [],
                          ),
                        ),
                      ],
                    ),
                    const VerticalSpace(value: 4),
                    CustomGeneralButton(
                      text: "${LocaleKeys.RESULT.tr()} (35) ",
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
