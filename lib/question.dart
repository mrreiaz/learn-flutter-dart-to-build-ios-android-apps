import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({Key? key}) : super(key: key);

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
