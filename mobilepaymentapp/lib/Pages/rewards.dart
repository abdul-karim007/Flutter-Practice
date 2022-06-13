import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/ImageConstants/imgconstants.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import 'package:mobilepaymentapp/functions/SafeArea.dart';
import 'package:mobilepaymentapp/functions/rewardcont.dart';
import 'package:mobilepaymentapp/functions/scWonCont.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          tospafeArea(context),
          //Main Container
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(ColorConstants.safeAreacolor),
              ),
              child: Column(children: [
                //text1
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    TextConstant.cashbackEarned,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                //text2
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    TextConstant.cash5000,
                    style: TextStyle(
                        color: Color(ColorConstants.color24), fontSize: 35),
                  ),
                ),
                //text3
                Text(
                  TextConstant.plusMoney,
                  style: TextStyle(
                      color: Color(ColorConstants.color24), fontSize: 20),
                ),
                //button
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      TextConstant.cbhistory,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(ColorConstants.color28),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8.0),
                child: Text(
                  TextConstant.wonscratchCards,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Row(
                children: [
                  scWonCont(context),
                  scWonCont(context),
                  scWonCont(context)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8.0, top: 5),
                child: Text(
                  TextConstant.collectRewards,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              rewardcont(
                  context,
                  ColorConstants.color29,
                  ImageConstants.rewardbg1,
                  ImageConstants.rewardimg1,
                  TextConstant.percentFood,
                  TextConstant.kfcOrder)
            ],
          )
        ],
      ),
    );
  }
}
