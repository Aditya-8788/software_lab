import 'package:flutter/material.dart';
import 'package:software_lab/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color.fromARGB(
            0,
            255,
            0,
            0,
          ), // Setting the global BottomSheet color here
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
