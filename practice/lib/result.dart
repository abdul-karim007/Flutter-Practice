import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'you need improvement';
    } else if (resultScore > 12) {
      resultText = 'you are impossible';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Try Again'),
            textColor: Colors.deepPurpleAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
