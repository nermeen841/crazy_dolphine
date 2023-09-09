import 'package:flutter/cupertino.dart';
import 'package:padle_me/presentation/widget/auth_stack.dart';
import 'widget/body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const AuthMainBody(
      iconData: CupertinoIcons.person,
      body: LoginBody(),
    );
  }
}
