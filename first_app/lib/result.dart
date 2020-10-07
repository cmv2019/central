import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  Function _resetQuiz;
  Result(this._totalScore, this._resetQuiz);

  String get resultMessge {
    return 'You have scored ${this._totalScore}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultMessge,
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: _resetQuiz, child: Text('Reset Quiz'))
        ],
      ),
    );
  }
}
