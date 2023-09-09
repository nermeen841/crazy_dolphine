import 'package:flutter/cupertino.dart';
import 'package:padle_me/presentation/widget/auth_stack.dart';

import 'widget/body.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const AuthMainBody(
      iconData: CupertinoIcons.person,
      body: RegisterBody(),
    );
  }
}
