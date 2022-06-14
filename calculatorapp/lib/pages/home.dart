import 'package:calculatorapp/pages/calculatorButton.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String display = '';
  late String result;
  late String operation;

  void buttonOnClick(String btnvalue) {
    if (btnvalue == 'C') {
      display = "";
      firstNum = 0;
      secondNum = 0;
      result = "";
    } else if (btnvalue == 'AC') {
      display = "";
      firstNum = 0;
      secondNum = 0;
      result = "";
      history = "";
    } else if (btnvalue == '+/-') {
      if (display[0] != '-') {
        result = '-' + display;
      } else {
        result = display.substring(1);
      }
    } else if (btnvalue == '<') {
      result = display.substring(0, display.length - 1);
    } else if (btnvalue == '+' ||
        btnvalue == '-' ||
        btnvalue == 'x' ||
        btnvalue == '/') {
      firstNum = int.parse(display);
      result = "";
      operation = btnvalue;
    } else if (btnvalue == '=') {
      secondNum = int.parse(display);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        result = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else if (btnvalue == '.') {
      double.parse(display);
    } else {
      result = int.parse(display + btnvalue).toString();
    }
    setState(() {
      display = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          alignment: Alignment(1.0, 1.0),
          child: Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Container(
              child: Text(
                history,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment(1.0, 1.0),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              child: Text(
                display,
                style: TextStyle(color: Colors.white, fontSize: 48),
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CalculatorButton(
            text: "AC",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "C",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "<",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "/",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CalculatorButton(
            text: "7",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "8",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "9",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "x",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CalculatorButton(
            text: "4",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "5",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "6",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "-",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CalculatorButton(
            text: "1",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "2",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "3",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "+",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CalculatorButton(
            text: ".",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "0",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "00",
            fillColor: Colors.blueGrey,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
          CalculatorButton(
            text: "=",
            fillColor: Colors.green,
            textColor: Colors.white,
            callback: buttonOnClick,
          ),
        ]),
      ]),
    );
  }
}
