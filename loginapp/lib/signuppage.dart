import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 30,
              child: Text('Enter your name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.left),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Full Name'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 30,
              child: Text(
                'Enter your Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 30,
              child: Text(
                'Enter your Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 30,
              child: Text(
                'Enter your DOB',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your DOB',
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'PROCEED',
              ),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
