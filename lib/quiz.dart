import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerPressed;
  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>answerPressed(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}