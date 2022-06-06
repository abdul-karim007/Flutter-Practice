import 'package:flutter/material.dart';

chatPage(String name, a, context) {
  return Scaffold(
    appBar: AppBar(
      leading: Row(
        children: [
          IconButton(
              iconSize: 20,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          // CircleAvatar(
          //   backgroundImage: AssetImage(a),
          //   radius: 10,
          // ),
        ],
      ),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 180,
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.video_call,
              size: 30,
            ),
          ),
          Icon(Icons.call),
          Icon(Icons.more_vert)
        ],
      ),
    ),
    body: Container(
      alignment: Alignment.bottomRight,
      height: MediaQuery.of(context).size.height * 1,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            )),
            Icon(Icons.send_rounded),
          ],
        ),
      ),
    ),
  );
}
