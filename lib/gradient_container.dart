import 'package:cricket_scorebook/styled_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [Colors.purple, Colors.yellow], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyledText('Hello ChiiChii!'),
      ),
    );
  }
}
