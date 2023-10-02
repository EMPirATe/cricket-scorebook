import 'package:cricket_scorebook/data/questions.dart';
import 'package:cricket_scorebook/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.choosenAnswers,
  });

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'choosenAnswer': choosenAnswers[i],
        'correctAnswer': questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numberOfTotalQuestions = questions.length;
    final numberofCorrectAnswers = summaryData.where((data) {
      return data['choosenAnswer'] == data['correctAnswer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $numberofCorrectAnswers out of $numberOfTotalQuestions questions correctly!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summary: summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz!')),
            ],
          )),
    );
  }
}
