import 'package:flutter/material.dart';

import "package:first_application/quiz.dart";
import 'package:first_application/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'Questions': 'What\'s your favorite Color?',
      'Answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'White', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'Purple', 'score': 10},
      ],
    },
    {
      'Questions': 'What\'s your favorite Smartphone?',
      'Answers': [
        {'text': 'Galaxy S', 'score': 6},
        {'text': 'Galaxy Note', 'score': 8},
        {'text': 'Iphone', 'score': 3},
        {'text': 'P30 Pro', 'score': 5},
      ],
    },
    {
      'Questions': 'What\'s your favorite Car?',
      'Answers': [
        {'text': 'BMW', 'score': 10},
        {'text': 'Mercedes', 'score': 8},
        {'text': 'Yaris', 'score': 2},
        {'text': 'Cerato', 'score': 4},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
