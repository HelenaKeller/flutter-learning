import 'package:crash_course/quiz.dart';
import 'package:crash_course/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          child: _questionIndex < _questionAndAnswers.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionAndAnswers: _questionAndAnswers,
                  questionIndex: _questionIndex,
                )
              : const Result(),
        ),
      ),
    );
  }
}

const _questionAndAnswers = <QuestionAndAnswersModel>[
  QuestionAndAnswersModel(
    questionText: 'What\'s your favourite color?',
    answers: [
      AnswerModel(answerText: 'Blue', score: 6),
      AnswerModel(answerText: 'Red', score: 8),
      AnswerModel(answerText: 'Black', score: 10),
      AnswerModel(answerText: 'Green', score: 3),
    ],
  ),
  QuestionAndAnswersModel(
    questionText: 'What\'s your favourite animal?',
    answers: [
      AnswerModel(answerText: 'Dog', score: 1),
      AnswerModel(answerText: 'Cat', score: 4),
      AnswerModel(answerText: 'Snake', score: 9),
      AnswerModel(answerText: 'Rabbit', score: 7),
    ],
  ),
  QuestionAndAnswersModel(
    questionText: 'What\'s your favourite instrument?',
    answers: [
      AnswerModel(answerText: 'Piano', score: 2),
      AnswerModel(answerText: 'Flute', score: 8),
      AnswerModel(answerText: 'Guitar', score: 4),
      AnswerModel(answerText: 'Violin', score: 1),
    ],
  ),
];

class QuestionAndAnswersModel {
  const QuestionAndAnswersModel({
    required this.questionText,
    required this.answers,
  });

  final String questionText;
  final List<AnswerModel> answers;
}

class AnswerModel {
  const AnswerModel({
    required this.answerText,
    required this.score,
  });

  final String answerText;
  final int score;
}
