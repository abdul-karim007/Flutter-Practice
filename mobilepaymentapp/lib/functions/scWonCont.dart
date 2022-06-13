import 'package:flutter/cupertino.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

scWonCont(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8),
    child: Container(
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width * .29,
      decoration: BoxDecoration(
          color: Color(ColorConstants.color19),
          borderRadius: BorderRadius.circular(15)),
    ),
  );
}
