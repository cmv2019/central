import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function anwerQuestionCallback;

  Answer(this._answer, this.anwerQuestionCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          _answer,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
        ),
        color: Colors.blue[300],
        textColor: Colors.white,
        onPressed: anwerQuestionCallback,
      ),
    );
  }
}
