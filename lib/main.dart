import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'onboarding/registerscreen/register_screen.dart';
import 'onboarding/sign_in_page/sign_in.dart';
import 'onboarding/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/SignInScreen': (context) => SignInScreen(),
        '/RegisterScreen': (context) => RegisterScreen(),
      },
    );
  }
}
