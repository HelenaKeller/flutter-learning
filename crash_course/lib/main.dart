import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    //var question[
    //  'What\'s your favourite color?',
    // 'What\'s your favourite animal?',
    //];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: Column(children: [
          const Text('The question!'),
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
