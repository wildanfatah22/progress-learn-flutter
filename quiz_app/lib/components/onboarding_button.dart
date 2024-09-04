import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.black),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      onPressed: startQuiz,
      label: const Text("Start Quiz"),
    );
  }
}
