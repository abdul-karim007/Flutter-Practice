import 'package:flutter/material.dart';

balpagebox(context, text1, text2, text3, clr) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width * .37,
      decoration: BoxDecoration(
          color: Color(clr), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              text2,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Text(
              text3,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}
