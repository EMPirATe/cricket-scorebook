import 'package:cricket_scorebook/home_page.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.purple),
        child: const Center(
          child: HomePage(),
        ));
  }
}
