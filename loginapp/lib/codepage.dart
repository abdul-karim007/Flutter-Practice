import 'package:flutter/material.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Text(
          'A Code has been sent to your Email. Enter the code below for successful Signup',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ]),
    );
  }
}
