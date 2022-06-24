import 'package:class19june/page/homeLogin.dart';
import 'package:class19june/page/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  SharedPreferences.setMockInitialValues({});

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  var password = prefs.getString('Password');
  print(email);
  print(password);
  runApp(
      MaterialApp(home: email == null && password == null ? Login() : Home()));
}
