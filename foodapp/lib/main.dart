import 'package:flutter/material.dart';
import 'package:foodapp/Constants/fonts.dart';
import 'package:foodapp/Screens/loginSignup.dart';
import 'package:foodapp/Screens/onBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: AppFont.mainFont,),
      debugShowCheckedModeBanner: false,
      home: LoginSignUp(),
    );
  }
}
