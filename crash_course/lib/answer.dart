import 'package:flutter/material.dart';

import 'main.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answer,
  }) : super(key: key);

  final VoidCallback selectHandler;
  final AnswerModel answer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answer.answerText),
      ),
    );
  }
}
