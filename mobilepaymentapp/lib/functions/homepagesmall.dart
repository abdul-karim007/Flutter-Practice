import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

smallContainer(text, i, context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Color(ColorConstants.color19),
              borderRadius: BorderRadius.circular(15)),
          height: MediaQuery.of(context).size.height * .08,
          width: MediaQuery.of(context).size.width * .2,
          child: Icon(
            i,
            color: Color(ColorConstants.color21),
            size: 30,
          ),
        ),
      ),
      Text(
        text,
        style: TextStyle(color: Color(ColorConstants.color20), fontSize: 15),
      ),
    ],
  );
}
