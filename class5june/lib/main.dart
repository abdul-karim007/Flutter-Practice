import 'package:class5june/Constants/constants.dart';
import 'package:class5june/widgets/dashboard.dart';
import 'package:class5june/widgets/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.appTitle),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
