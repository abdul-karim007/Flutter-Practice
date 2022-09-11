

import 'package:flutter/material.dart';
import 'package:loginapp/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            child: Text('logout'),
            onPressed: () {
              logout(context);
            },
          )),
          if (prefs != null)
              Text(
                  'email = ${prefs?.get('email')}, password = ${prefs?.get('password')}')
          
        ],
      ),
    );
  }

  logout(context) async {
    await init();
    prefs?.remove('email');
    prefs?.remove('password');
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignIn()));
  }
}
