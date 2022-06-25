import 'package:flutter/material.dart';
import 'package:loginapp/signuppage.dart';
import 'package:shared_preferences/shared_preferences.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
SharedPreferences? prefs;

class SignIn extends StatelessWidget {
  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomRight,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Enter ID and Password to Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              height: 80,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Your ID'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password'),
                controller: passwordController,
              ),
            ),
            FlatButton(
                child: const Text(
                  'Login',
                ),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: save),
            FlatButton(
              child: const Text(
                'Sign Up',
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );
              },
            ),
            if (prefs != null)
              Text(
                  'email = ${prefs?.get('email')}, password = ${prefs?.get('password')}')
          ],
        ),
      ),
    );
  }

  save() async {
    await init();
    prefs?.setString('email', emailController.text.toString());
    prefs?.setString('password', passwordController.text.toString());
  }
}
