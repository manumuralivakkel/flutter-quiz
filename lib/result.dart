import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get showResult {
    String rscore = resultScore.toString();
    return "Your score is $rscore";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(showResult),
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text("RESET QUIZ"),
        )
      ],
    );
  }
}
