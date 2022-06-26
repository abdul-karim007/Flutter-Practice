import 'package:class26june/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        SizedBox(
            child: TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )),
        ElevatedButton(onPressed: () {}, child: Text('Login')),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
            child: Text('Sign Up')),
      ],
    );
  }
}
