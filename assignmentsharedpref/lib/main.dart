import 'package:assignmentsharedpref/pages/mySplash.dart';
import 'package:assignmentsharedpref/pages/saved.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
    
  WidgetsFlutterBinding.ensureInitialized();
  // await SavedData().initt();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
final prefs = SharedPreferences.getInstance();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MySplash(),
        ));
  }

  // This widget is the root of your application.
}
