import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/presentation/screen/booking/widget/filter.dart';
import 'package:padle_me/presentation/screen/booking/widget/padle_list.dart';
import 'package:padle_me/presentation/widget/body_container.dart';

class BookingBody extends StatefulWidget {
  const BookingBody({super.key});

  @override
  State<BookingBody> createState() => _BookingBodyState();
}

class _BookingBodyState extends State<BookingBody> {
  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.04,
          vertical: screenHeight(context) * 0.02,
        ),
        child: Column(
          children: const [
            FilterSortItem(),
            VerticalSpace(value: 3),
            PadleListItem(),
          ],
        ),
      ),
    );
  }
}
