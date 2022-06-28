import 'package:class26june/home.dart';
import 'package:class26june/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*.8,
            child: TextField(controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*.8,
                child: TextField(controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            )),
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString());
                          Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                    return showDialog(
                    context: context,
                    builder: (ctxt) =>  AlertDialog(
                      title: Text("No User Found"),
                    )
                );
                  } else if (e.code == 'wrong-passwdord') {
                    print('Wrong password provided for that user.');
                    return showDialog(
                    context: context,
                    builder: (ctxt) =>  AlertDialog(
                      title: Text("Wrong Password"),
                    )
                );
                  }
                }
              },
              child: Text('Login')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: Text('Sign Up')),
        ],
      ),
    );
  }
}
