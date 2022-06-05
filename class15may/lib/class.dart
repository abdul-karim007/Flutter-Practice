import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  const Class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class'),
        actions: const [Icon(Icons.logout)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.black,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
              )
            ],
          )
        ]),
      ),
    );
  }
}
