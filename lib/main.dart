import 'package:debouncer_project/screens/onboard_screen.dart';
import 'package:debouncer_project/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().appTheme,
      home: const OnboardingScreen(),
    );
  }
}
