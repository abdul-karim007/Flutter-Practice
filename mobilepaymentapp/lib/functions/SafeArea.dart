import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Pages/balance.dart';
import 'package:mobilepaymentapp/Pages/homepage.dart';
import 'package:mobilepaymentapp/Pages/offers.dart';
import 'package:mobilepaymentapp/Pages/rewards.dart';

import '../Constants/ImageConstants/imgconstants.dart';
import '../Constants/TextConstants/Textconstant.dart';
import '../Constants/colorConstants/colorConstants.dart';

tospafeArea(context) {
  return Container(
    color: Color(ColorConstants.safeAreacolor),
    child: SafeArea(
      maintainBottomViewPadding: true,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image(
                    image: AssetImage(ImageConstants.dp),
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: TextConstant.homepageSearchBar,
                    hintStyle: TextStyle(
                        color: Color(0xff97A3AB),
                        fontFamily: TextConstant.sansSerif,
                        fontFamilyFallback: [TextConstant.spartanSemiBold]),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(
                        0xff97A3AB,
                      ),
                      size: 30,
                    ),
                    filled: true,
                    fillColor: Color(ColorConstants.homeSearchbar),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: TextConstant.sansSerif,
                    fontFamilyFallback: [TextConstant.spartanBold],
                    color: Color(0xff4d5dfa),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff343645),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 40,
                        color: Color(0xff97A3AB),
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 5,
                      ),
                      top: 10,
                      right: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .025,
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      TextConstant.home,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .025,
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Balance()),
                      );
                    },
                    child: Text(
                      TextConstant.balance,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .025,
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Offers()),
                      );
                    },
                    child: Text(
                      TextConstant.offers,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .025,
                  color: Colors.transparent,
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Rewards()),
                      );
                    },
                    child: Text(
                      TextConstant.rewards,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
