import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/home.dart';
import 'package:mobilepaymentapp/loginPage.dart';
import 'package:mobilepaymentapp/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  var password = prefs.getString('password');
  print(password);
  runApp(MaterialApp(home: email == null ? LoginPage() : HomeScreen()));
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
