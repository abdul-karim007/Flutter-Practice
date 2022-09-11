import 'package:flutter/material.dart';
import 'package:foodapp/Constants/customColor.dart';
import 'package:foodapp/Constants/textConstant.dart';
import 'package:foodapp/functions/customTextfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 10),
            child: Text(
              CustomText.email,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          customTextField(context,),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 10),
            child: Text(
              CustomText.password,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          customTextField(context)],
      ),
    );
  }
}
