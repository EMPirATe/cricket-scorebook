import 'package:cricket_scorebook/data/questions.dart';
import 'package:cricket_scorebook/home_page.dart';
import 'package:cricket_scorebook/questions_page.dart';
import 'package:cricket_scorebook/results_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsPage(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = ResultsPage(choosenAnswers: selectedAnswers);
      });

      selectedAnswers = [];
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepPurple,
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
