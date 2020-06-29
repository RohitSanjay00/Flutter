import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': "what's your favourite color ?",
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'blue', 'score': 1}
      ]
    },
    {
      'questionText': "whats your favourite animal",
      'answers': [
        {'text': 'cat', 'score': 5},
        {'text': 'dog', 'score': 7},
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 3}
      ]
    },
    {
      'questionText': "Where is india located",
      'answers': [
        {'text': 'Asia', 'score': 15},
        {'text': 'europ', 'score': 1},
        {'text': 'America', 'score': 2},
        {'text': 'Antartica', 'score': 0}
      ]
    },
    {
      'questionText': "How long is one hour",
      'answers': [
        {'text': '60 Mins', 'score': 10},
        {'text': '60 Sec', 'score': 5},
        {'text': '60 Days', 'score': 0},
        {'text': 'none ', 'score': 0}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions !!');
    } else {
      print('No more Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
