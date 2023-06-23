import 'package:duds/Components/onboarding_two_screen.dart';
import 'package:duds/Components/testing_screen.dart';
import 'package:duds/Components/onboarding_one_screen.dart';
import 'package:duds/Components/loading_screen.dart';
import 'package:duds/constants.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: '/onboarding_one',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/onboarding_one': (context) => const OnboardingOneScreen(),
        '/onboarding_two': (context) => const OnboardingTwoScreen(),
        '/testing': (context) => const TestingScreen(),
      },
    );
  }
}
