import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return __MyAppState();
  }
}

class __MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "what is your pet's name?",
      "answers": [
        {"text": "schine", "score": 1},
        {"text": "pinky", "score": 3},
        {"text": "boss", "score": 2},
      ]
    },
    {
      "questionText": "what is your favourite color?",
      "answers": [
        {"text": "black", "score": 1},
        {"text": "pink", "score": 3},
        {"text": "blue", "score": 2},
      ]
    },
    {
      "questionText": "what is your hometown?",
      "answers": [
        {"text": "Nooranad", "score": 1},
        {"text": "Adoor", "score": 3},
        {"text": "Charummood", "score": 2},
      ]
    }
  ];
  // This widget is the root of your application.

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    //print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var _questions = [

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz Buddy"),
          ),
          // body: Center(
          //   child: Text("Hello buddy are you ready?"),
          // ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerPressed: _answerPressed,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
