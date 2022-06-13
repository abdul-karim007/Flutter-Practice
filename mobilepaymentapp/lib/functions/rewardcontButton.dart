import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

rewardContButton() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: Colors.white),
      onPressed: () {},
      child: Text(
        TextConstant.collectNow,
        style: TextStyle(
          color: Color(ColorConstants.color32),
        ),
      ));
}
