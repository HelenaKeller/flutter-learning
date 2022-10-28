import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './main.dart';

class Quiz extends StatelessWidget {
  final List<QuestionAndAnswers> questionAndAnswers;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz({
    required this.answerQuestion,
    required this.questionAndAnswers,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionAndAnswers[questionIndex].questionText,
        ),
        ...(questionAndAnswers[questionIndex].answers)
            .map((answer) => Answer(answerQuestion, answer))
            .toList(),
      ],
    );
  }
}
