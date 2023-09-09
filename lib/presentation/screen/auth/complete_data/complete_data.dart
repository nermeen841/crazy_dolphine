import 'package:flutter/material.dart';
import 'package:padle_me/presentation/screen/auth/complete_data/widget/body.dart';
import 'package:padle_me/presentation/widget/auth_stack.dart';

class CompleteDataScreen extends StatefulWidget {
  const CompleteDataScreen({super.key});

  @override
  State<CompleteDataScreen> createState() => _CompleteDataScreenState();
}

class _CompleteDataScreenState extends State<CompleteDataScreen> {
  @override
  Widget build(BuildContext context) {
    return const AuthMainBody(
      iconData: Icons.scuba_diving_sharp,
      body: CompleteDataBody(),
    );
  }
}
