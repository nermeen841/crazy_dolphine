import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/presentation/screen/booking/widget/body.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight(context) * 0.03,
        ),
        child: const BookingBody(),
      ),
    );
  }
}
