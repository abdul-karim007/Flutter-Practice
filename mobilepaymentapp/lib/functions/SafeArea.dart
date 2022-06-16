import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import 'package:mobilepaymentapp/Pages/balance.dart';
import 'package:mobilepaymentapp/Pages/homepage.dart';
import 'package:mobilepaymentapp/Pages/offers.dart';
import 'package:mobilepaymentapp/Pages/profile.dart';
import 'package:mobilepaymentapp/Pages/rewards.dart';
import '../Constants/ImageConstants/imgconstants.dart';
import '../Constants/TextConstants/Textconstant.dart';
import '../Pages/notifications.dart';

tospafeArea(context) {
  return Container(
    color: Color(0xff1F222A),
    child: SafeArea(
      maintainBottomViewPadding: true,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: IconButton(
                  icon: Image.asset(ImageConstants.dp),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: TextConstant.homepageSearchBar,
                      hintStyle: TextStyle(
                          color: Color(ColorConstants.color35),
                          fontFamily: TextConstant.sansSerif,
                          fontFamilyFallback: [TextConstant.spartanSemiBold]),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(
                          ColorConstants.color35,
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
                      color: Color(ColorConstants.color34),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(ColorConstants.homeSearchbar),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()),
                          );
                        },
                        iconSize: 40,
                        color: Color(ColorConstants.color35),
                        icon: Icon(Icons.notifications_outlined),
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 5,
                      ),
                      top: 12,
                      right: 12,
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
