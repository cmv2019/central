import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your name?',
      'answers': [
        {'ans': 'Sanju', 'score': 1},
        {'ans': 'Joel', 'score': 0},
        {'ans': 'Varghese', 'score': 2}
      ]
    },
    {
      'question': 'How old are you?',
      'answers': [
        {'ans': '4', 'score': 0},
        {'ans': '40', 'score': 1},
        {'ans': '44', 'score': 2}
      ]
    },
    {
      'question': 'Are you a boy or a girl?',
      'answers': [
        {'ans': 'Boy', 'score': 2},
        {'ans': 'Girl', 'score': 0},
        {'ans': 'Don\'t know', 'score': 1}
      ]
    }
  ];
  int _index = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _index = _index + 1;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _index = _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz app'),
          ),
          body: _index < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  index: _index,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
