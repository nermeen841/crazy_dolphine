import 'package:flutter/cupertino.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/presentation/screen/auth/forget_password/widget/body.dart';
import 'package:padle_me/presentation/widget/auth_stack.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthMainBody(
      iconData: CupertinoIcons.lock_open,
      iconSize: screenWidth(context) * 0.1,
      body: const ForgetPasswordBody(),
    );
  }
}
