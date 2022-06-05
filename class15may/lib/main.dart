import 'package:flutter/material.dart';
import './xyz.dart';
import './class.dart';
import './new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: New(),
      ),
    );
  }
}
