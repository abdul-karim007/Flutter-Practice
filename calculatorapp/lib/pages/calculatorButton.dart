import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color fillColor;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.callback,
    required this.fillColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        width: 70,
        height: 70,
        child: FlatButton(
          onPressed: () => callback(text),
          color: fillColor,
          textColor: textColor,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
