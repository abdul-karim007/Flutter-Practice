import 'package:class19june/page/homeLogin.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            //after the login REST api call && response code ==200
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('email', 'abdul@flutter.com');
            prefs.setString('Password', 'flutterJawanPak');
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => Home()));
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
