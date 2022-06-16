import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
        child: Container(
          height: MediaQuery.of(context).size.height * .6,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Color(ColorConstants.color33),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      TextConstant.notifications,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstant.rechargeComp,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TextConstant.rechargeCompSentence,
                            style: TextStyle(
                                color: Color(ColorConstants.color36),
                                fontSize: 12),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color(ColorConstants.homeSearchbar),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: Color(ColorConstants.color35),
                                  size: 30,
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  radius: 5,
                                ),
                                top: 7,
                                right: 8,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      TextConstant.rechargeCompDate,
                      style: TextStyle(
                          color: Color(ColorConstants.color36), fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstant.moneyRec,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TextConstant.moneyRecSentence,
                            style: TextStyle(
                                color: Color(ColorConstants.color36),
                                fontSize: 12),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color(ColorConstants.homeSearchbar),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: Color(ColorConstants.color35),
                                  size: 30,
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  radius: 5,
                                ),
                                top: 7,
                                right: 8,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      TextConstant.moneyRecDate,
                      style: TextStyle(
                          color: Color(ColorConstants.color36), fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstant.offerUnlocked,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TextConstant.offerUnlockedSentence,
                            style: TextStyle(
                                color: Color(ColorConstants.color36),
                                fontSize: 12),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color(ColorConstants.homeSearchbar),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: Color(ColorConstants.color35),
                                  size: 30,
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  radius: 5,
                                ),
                                top: 7,
                                right: 8,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      TextConstant.offerUnlockedDate,
                      style: TextStyle(
                          color: Color(ColorConstants.color36), fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      TextConstant.recentNotifications,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
