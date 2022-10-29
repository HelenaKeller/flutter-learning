import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './main.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key? key,
    required this.answerQuestion,
    required this.questionAndAnswers,
    required this.questionIndex,
  }) : super(key: key);

  final List<QuestionAndAnswersModel> questionAndAnswers;
  final int questionIndex;
  final Function(int) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questionAndAnswers[questionIndex].questionText,
        ),
        ...(questionAndAnswers[questionIndex].answers)
            .map((answer) => Answer(
                  selectHandler: () => answerQuestion(answer.score),
                  answer: answer,
                ))
            .toList(),
      ],
    );
  }
}
