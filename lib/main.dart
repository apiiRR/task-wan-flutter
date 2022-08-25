import 'package:flutter/material.dart';
import 'app/screens/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task-Wan',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const OnBoardingScreen(),
    );
  }
}
