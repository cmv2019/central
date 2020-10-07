import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  Function answerQuestion;
  final int index;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerQuestion,
      @required this.index,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['ans'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
