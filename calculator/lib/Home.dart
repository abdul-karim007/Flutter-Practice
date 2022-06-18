import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = '';

  Widget button(t) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          result = result + t;
        });
      },
      child: Text(t),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
          fixedSize: MaterialStateProperty.all(Size.square(60)),
          backgroundColor: MaterialStateProperty.all(Colors.black)),
    );
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  clear() {
    setState(() {
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  result,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    output();
                  },
                  child: Text('='),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size.square(60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    clear();
                  },
                  child: Text('C'),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size.square(60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    result = '';
                  },
                  child: Text('>'),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size.square(60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
                button('/')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button('7'), button('8'), button('9'), button('*')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button('4'), button('5'), button('6'), button('-')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button('1'), button('2'), button('3'), button('+')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button('0'), button('00'), button('.'), button('%')],
            )
          ],
        ),
      ),
    );
  }
}
