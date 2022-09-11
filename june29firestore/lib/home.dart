import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController first = TextEditingController();
  TextEditingController sec = TextEditingController();
  TextEditingController third = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'full_name': first.text, // John Doe
          'company': sec.text, // Stokes and Sons
          'age': third.text // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  removeUser(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: first,
          ),
          TextField(
            controller: sec,
          ),
          TextField(
            controller: third,
          ),
          ElevatedButton(onPressed: addUser, child: Text('Add'))
        ],
      ),
    );
  }
}
