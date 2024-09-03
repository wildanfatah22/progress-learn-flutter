import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        linearColor: [
          Color.fromARGB(255, 24, 12, 116),
          Color.fromARGB(255, 47, 25, 215),
        ],
      ),
    ),
  ));
}
