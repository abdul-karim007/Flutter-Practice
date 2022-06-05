import 'package:flutter/material.dart';

class xyz extends StatelessWidget {
  const xyz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.cyan,
          child: Column(
            children: [
              Row(
                children: [
                  Container(color: Colors.black, width: 50, height: 50),
                  Container(color: Colors.orange, width: 50, height: 50),
                  Container(color: Colors.red, width: 50, height: 50),
                  Container(
                    color: Colors.blueGrey,
                    width: 50,
                    height: 50,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(color: Colors.black, width: 50, height: 50),
                  Container(color: Colors.blue, width: 50, height: 50),
                  Container(color: Colors.purple, width: 50, height: 50),
                  Container(color: Colors.pink, width: 50, height: 50)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
