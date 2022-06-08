import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/pages/OpenPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: openPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
