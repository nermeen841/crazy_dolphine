import 'package:flutter/material.dart';
import 'package:padle_me/presentation/widget/auth_stack.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthMainBody(
      body: CodeScreen(),
      iconData: Icons.privacy_tip_outlined,
    );
  }
}
