import 'package:flutter/material.dart';
import 'package:cricket_scorebook/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.blue, Colors.yellow]),
      ),
    ),
  );
}
