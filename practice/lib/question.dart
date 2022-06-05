import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionIndex;

  Question(this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionIndex,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
