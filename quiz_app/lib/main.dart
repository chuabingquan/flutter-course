import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  // a list of map data structures (written in shorthand)
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        { 'text': 'red', 'score': 2 },
        { 'text': 'blue', 'score': 10 },
        { 'text': 'yellow', 'score': 5 },
        { 'text': 'green', 'score': 8 }
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        { 'text': 'cat', 'score': 10000 },
        { 'text': 'dog', 'score': 2 },
        { 'text': 'rabbit', 'score': 2 },
        { 'text': 'bird', 'score': 0 }
      ]
    },
    {
      'questionText': 'What\'s your favourite language?',
      'answers': [
        { 'text': 'Go', 'score': 10 },
        { 'text': 'Rust', 'score': 10 },
        { 'text': 'Standard ML', 'score': 6 },
        { 'text': 'JavaScript', 'score': 8 },
      ]
    }
  ];

  void _answerQuestion(int score) {
    // setState is provided by the State class
    if (_questionIndex < _questions.length) {
      setState(() {
        _totalScore += score;
        _questionIndex += 1;
      });
    }
  }

  void _resetQuiz () {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(this._totalScore, _resetQuiz),
      ),
    );
  }
}
