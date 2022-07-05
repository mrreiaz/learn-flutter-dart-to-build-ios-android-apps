import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionsText': 'Whats your favorite color?',
        'answers': ['Black','Green','Red','White'],
      },
      {
        'questionsText': 'Whats your favorite animal?',
        'answers': ['Dog','Cat','Cow','Tiger'],
      },
      {
        'questionsText': 'Whats your favorite flower?',
        'answers': ['Rose','Lilac','Poppy Flower','Lotus'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]['questionsText'] as String),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
