import 'dart:async';
import 'package:flutter/material.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/presentation/screen/auth/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => MagicRouter.navigateAndPopAll(
        const LoginScreen(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/icons/crazy_dolphine.jpeg"),
      ),
    );
  }
}
