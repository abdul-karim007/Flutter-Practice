import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
            child: Row(
          children: [CircleAvatar(backgroundImage: AssetImage('assets/logo.png')), Text('HEllo')],
        ))
      ],
    );
  }
}
