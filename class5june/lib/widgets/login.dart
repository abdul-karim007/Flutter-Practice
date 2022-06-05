import 'package:class5june/Constants/constants.dart';
import 'package:class5june/widgets/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              );
            },
            child: Text(AppConstants.login),
          ),
        ],
      )),
    );
  }
}
