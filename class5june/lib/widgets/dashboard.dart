import 'package:class5june/Constants/color_constants.dart';
import 'package:class5june/Constants/constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Color(ColorConstants.baseColor),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(AppConstants.back))
        ],
      ),
    );
  }
}
