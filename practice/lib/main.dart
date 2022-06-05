import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}
// single expression functions can be written as
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //_ makes a public class private, _xyz can only be used in main
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'Score': 10},
        {'text': 'Red', 'Score': 5},
        {'text': 'Green', 'Score': 1},
      ]
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Dog', 'Score': 5},
        {'text': 'Cat', 'Score': 1},
        {'text': 'Tiger', 'Score': 10}
      ],
    },
    {
      'questionText': 'What\'s your fav subject?',
      'answers': [
        {'text': 'Programming', 'Score': 10},
        {'text': 'English', 'Score': 1},
        {'text': 'Maths', 'Score': 5}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No More Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
        ),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestions,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
