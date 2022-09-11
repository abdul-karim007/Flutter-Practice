import 'package:flutter/material.dart';
import 'package:foodapp/Constants/customColor.dart';

customTextField(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: TextField(
        decoration: InputDecoration(
            focusColor: Color(CustomClr.appColor),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(CustomClr.appColor),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            enabled: true),
      ));
}
