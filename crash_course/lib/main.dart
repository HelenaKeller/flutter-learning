import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1.'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 2.'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 3.'),
          ),
        ]),
      ),
    );
  }
}
