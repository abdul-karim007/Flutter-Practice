import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/functions/rewardcontButton.dart';

rewardcont(context, clr, img1, img2, text1, text2) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      decoration: BoxDecoration(
          color: Color(clr), borderRadius: BorderRadius.circular(15)),
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(img1),
              ),
              Positioned(
                child: Image(image: AssetImage(img2)),
                left: 15,
                top: 6,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                rewardContButton()
              ],
            ),
          )
        ],
      ),
    ),
  );
}
