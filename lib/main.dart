import 'package:flutter/material.dart';
import './theme/theme_data.dart';
import 'View/onboarding_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}
Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 2));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fellowship App',
      theme:defaultTheme,
      home: const OnBoardingPage()
    );
  }
}


