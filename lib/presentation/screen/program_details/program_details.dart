import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/presentation/screen/program_details/widget/body.dart';

import '../../../core/router/router.dart';
import '../auth/login/login.dart';

class ProgramDetailsScreen extends StatefulWidget {
  const ProgramDetailsScreen(
      {super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  State<ProgramDetailsScreen> createState() => _ProgramDetailsScreenState();
}

class _ProgramDetailsScreenState extends State<ProgramDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: customAppbar(title: widget.title, context: context, actions: [
      //   IconButton(
      //     onPressed: () => MagicRouter.navigateAndPopAll(const LoginScreen()),
      //     icon: const Icon(
      //       Icons.scuba_diving_sharp,
      //       color: Colors.white,
      //     ),
      //   ),
      // ]),
      body: ProgramDetailsBody(
        image: widget.image,
        title: widget.title,
      ),
    );
  }
}
