import 'package:flutter/material.dart';

import '../Constants/colorConstants/colorConstants.dart';

offercont(context, clr, img1, img2) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
          color: Color(clr), borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(children: [
        Stack(
          children: [
            Image(
              image: AssetImage(img1),
            ),
            Positioned(
              child: Image(image: AssetImage(img2)),
              right: 7,
              top: 7,
            )
          ],
        )
      ]),
    ),
  );
}
