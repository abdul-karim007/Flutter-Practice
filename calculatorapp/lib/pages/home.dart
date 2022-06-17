import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";
  Widget button(var t, Color clr) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          result = result + t;
        });
      },
      child: Text(t),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(clr)),
    );
  }

  clear() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
      clear();
    });
  }

  del() {
    setState(() {
      result = result.substring(0, result.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.purple.withOpacity(.5),
            child: Text(result,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("/", Colors.deepPurple),
              ElevatedButton(
                  onPressed: clear,
                  child: Text("C"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple))),
              button("%", Colors.deepPurple),
              ElevatedButton(
                  onPressed: del,
                  child: Text(">"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("7", Colors.red),
              button("8", Colors.red),
              button("9", Colors.red),
              button("x", Colors.deepPurple),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("4", Colors.red),
              button("5", Colors.red),
              button("6", Colors.red),
              button("-", Colors.deepPurple),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("1", Colors.red),
              button("2", Colors.red),
              button("3", Colors.red),
              button("+", Colors.deepPurple),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button("00", Colors.red),
              button("0", Colors.red),
              button(".", Colors.red),
              ElevatedButton(
                  onPressed: () {
                    output();
                  },
                  child: Text("="),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple))),
            ],
          )
        ],
      ),
    );
  }
}
