import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/chatpage.dart';

CustomListTile(String name, String message, Color clr, a, context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 3),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => chatPage(name, a, context),
          ),
        );
      },
      hoverColor: Colors.blue,
      leading: CircleAvatar(backgroundImage: AssetImage(a)
          // NetworkImage(
          //     'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/479px-WhatsApp.svg.png'),
          ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.check,
        color: Colors.blue,
      ),
      tileColor: Colors.black87,
    ),
  );
}
