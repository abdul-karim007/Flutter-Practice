import 'package:whatsappclone/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     colorScheme: ColorScheme(
      //         brightness: Brightness.dark,
      //         primary: Colors.black,
      //         onPrimary: Colors.green,
      //         secondary: Colors.blueAccent,
      //         onSecondary: Colors.blueAccent,
      //         error: Colors.red,
      //         onError: Colors.red,
      //         background: Colors.lime,
      //         onBackground: Colors.lime,
      //         surface: Colors.blueGrey,
      //         onSurface: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Home'),
        // ),
        body: Dashboard(),
      ),
    );
  }
}
