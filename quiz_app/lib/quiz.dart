import 'package:flutter/material.dart';

import 'package:quiz_app/onboarding_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'onboarding-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // USING INIT STATE
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = OnboardingScreen(switchScreen);
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'onboarding-screen'
        ? OnboardingScreen(switchScreen)
        : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.blueAccent),
          child: screenWidget,
        ),
      ),
    );
  }
}
