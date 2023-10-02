import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outText, {super.key});

  final String outText;

  @override
  Widget build(context) {
    return Text(
      outText,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
