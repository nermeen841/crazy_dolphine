import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/presentation/screen/detail/widget/body.dart';
import 'package:padle_me/presentation/screen/layout/layout.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutAppbar(() => scaffoldKey.currentState!.openDrawer()),
      body: const DetailBody(),
    );
  }
}
