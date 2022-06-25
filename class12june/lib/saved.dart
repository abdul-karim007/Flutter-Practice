import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/text/textconstants.dart';
import 'package:mobilepaymentapp/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginPage.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        semanticLabel: 'Drawer',
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text(
                'To-Do App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 25),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.question_mark_rounded,
                      size: 20,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('email');
                    prefs.remove('password');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => LoginPage()));
                  },
                  child: Text('Logout'))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(TextConstants.tittle),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      tileColor: Colors.grey,
                      title: prefs != null
                          ? Text(
                              '${prefs?.getString('chatNameText')}',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          : Text('null'),
                      trailing: SizedBox(
                        width: 100,
                      ),
                    );
                  })))

          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15.0),
          //   child:
          //    FloatingActionButton(
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     child: Icon(Icons.add),
          //   ),
          // )
        ],
      )),
    );
  }
}
