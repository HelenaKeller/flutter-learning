import 'package:crash_course/quiz.dart';
import 'package:crash_course/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
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
              : Result(),
        ),
      ),
    );
  }
}

const _questionAndAnswers = <QuestionAndAnswers>[
  QuestionAndAnswers(
    questionText: 'What\'s your favourite color?',
    answers: [
      'Blue',
      'Red',
      'Black',
      'Green',
    ],
  ),
  QuestionAndAnswers(
    questionText: 'What\'s your favourite animal?',
    answers: [
      'Dog',
      'Cat',
      'Snake',
      'Rabbit',
    ],
  ),
  QuestionAndAnswers(
    questionText: 'What\'s your favourite instrument?',
    answers: [
      'Piano',
      'Flute',
      'Guitar',
      'Violin',
    ],
  ),
];

class QuestionAndAnswers {
  const QuestionAndAnswers({
    required this.questionText,
    required this.answers,
  });

  final String questionText;
  final List<String> answers;
}
