import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/chat.dart';

CustomListTile(String name, String message, Color clr, a) {
  return Container(
    margin: const EdgeInsets.only(bottom: 3),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Chats(),
          ),
        );
      },
      hoverColor: Colors.blue,
      tileColor: Colors.grey,
      leading: CircleAvatar(backgroundImage: AssetImage(a)
          // NetworkImage(
          //     'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/479px-WhatsApp.svg.png'),
          ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Icon(
        Icons.check,
        color: Colors.blue,
      ),
    ),
  );
}
