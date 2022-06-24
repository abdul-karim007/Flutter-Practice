import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(
              'To-Do App',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 10),
                    hintText: 'Enter your Email'),
                controller: email,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 10),
                    hintText: 'Enter your Password'),
                controller: password,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('email', 'abdul@flutter.com');
            prefs.setString('Password', 'flutterJawanPak');
            Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) => HomeScreen()));
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
