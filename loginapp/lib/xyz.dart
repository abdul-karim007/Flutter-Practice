import 'package:flutter/material.dart';
import 'package:loginapp/signuppage.dart';

class Abc extends StatelessWidget {
  const Abc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Container(
        alignment: Alignment.bottomRight,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
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
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Your ID'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password'),
              ),
            ),
            FlatButton(
              child: const Text(
                'Login',
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
            ),
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
          ],
        ),
      ),
    );
  }
}
