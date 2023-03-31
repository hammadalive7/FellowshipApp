import 'package:flutter/material.dart';

import 'View/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fellowship App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingPage()
    );
  }
}


