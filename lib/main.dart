// ignore_for_file: deprecated_member_use

import 'package:bloc/bloc.dart';
import 'package:padle_me/generator/localization_constant.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/theme.dart';
import 'package:padle_me/core/network/appbinding.dart';
import 'package:padle_me/core/router/router.dart';
import 'core/utiles/bloc_observer.dart';
import 'generator/codegen_loader.dart';
import 'presentation/screen/splash/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBinding.initAsyncDependebcies();
  // FirebaseServices().intializeFirebase();

  BlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
        path: 'asset/translation',
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    ),
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setLocale(Locale locale) async {
    setState(() {
      context.locale = locale;
    });
    debugPrint('Applan:$locale');
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        context.locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseServices().getinitialMessage();
  //   FirebaseServices().getonMessage();
  //   FirebaseServices().getonMessageOpenedApp();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'crazy dolphine',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: themeData,
      home: const SplashScreen(),
    );
  }
}
