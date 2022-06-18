import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Pages/notifications.dart';
import 'package:mobilepaymentapp/Pages/profile.dart';
import 'package:mobilepaymentapp/Pages/recievemoney.dart';
import 'package:mobilepaymentapp/functions/balpagebox.dart';
import 'package:mobilepaymentapp/functions/homepageWidget.dart';
import 'package:mobilepaymentapp/functions/homepagesmall.dart';
import 'package:mobilepaymentapp/functions/offerscont.dart';
import 'package:mobilepaymentapp/functions/recentTrans.dart';
import 'package:mobilepaymentapp/functions/rewardcont.dart';
import 'package:mobilepaymentapp/functions/scWonCont.dart';

import '../Constants/ImageConstants/imgconstants.dart';
import '../Constants/TextConstants/Textconstant.dart';
import '../Constants/colorConstants/colorConstants.dart';

class tabbarView extends StatelessWidget {
  const tabbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(24, 26, 32, 1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(ColorConstants.safeAreacolor),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    TextConstant.home,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(TextConstant.balance,
                      style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child:
                      Text(TextConstant.offers, style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(TextConstant.rewards,
                      style: TextStyle(fontSize: 17)),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            //home
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              TextConstant.moneyTransfer,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(ColorConstants.moreContainer),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    TextConstant.more,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(ColorConstants.moreColor),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Color(ColorConstants.moreColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color2),
                              Colors.white,
                              Color(ColorConstants.color3),
                              TextConstant.scanQR,
                              Icons.qr_code_2_rounded),
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color5),
                              Colors.white,
                              Color(ColorConstants.color4),
                              TextConstant.sendToContact,
                              Icons.person_add_alt),
                        ],
                      ),
                      Row(
                        children: [
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color6),
                              Colors.white,
                              Color(ColorConstants.color7),
                              TextConstant.sendToBank,
                              Icons.account_balance_outlined),
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color8),
                              Colors.white,
                              Color(ColorConstants.color9),
                              TextConstant.selfTransfer,
                              Icons.repeat),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              TextConstant.recharge,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(ColorConstants.moreContainer),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    TextConstant.more,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(ColorConstants.moreColor),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Color(ColorConstants.moreColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      Row(
                        children: [
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color12),
                              Colors.white,
                              Color(ColorConstants.color11),
                              TextConstant.mobileRe,
                              Icons.phone_android_outlined),
                          homePagewidgets(
                            context,
                            Color(ColorConstants.color14),
                            Colors.white,
                            Color(ColorConstants.color13),
                            TextConstant.electricBill,
                            Icons.wb_sunny_outlined,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color16),
                              Colors.white,
                              Color(ColorConstants.color15),
                              TextConstant.dthBill,
                              Icons.account_balance_outlined),
                          homePagewidgets(
                              context,
                              Color(ColorConstants.color18),
                              Colors.white,
                              Color(ColorConstants.color17),
                              TextConstant.postpaidBill,
                              Icons.receipt_long_outlined),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            TextConstant.ticket,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            smallContainer(TextConstant.movies,
                                Icons.movie_outlined, context),
                            smallContainer(TextConstant.trains,
                                Icons.train_outlined, context),
                            smallContainer(TextConstant.bus,
                                Icons.directions_bus_outlined, context),
                            smallContainer(TextConstant.flight,
                                Icons.flight_outlined, context),
                            smallContainer(TextConstant.cars,
                                Icons.directions_car_outlined, context)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            TextConstant.moreServices,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            smallContainer(TextConstant.invest,
                                Icons.bar_chart_sharp, context),
                            smallContainer(
                                TextConstant.loans, Icons.money, context),
                            smallContainer(TextConstant.insaurance,
                                Icons.monitor_heart, context),
                            smallContainer(TextConstant.fastag,
                                Icons.directions_car_rounded, context),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    TextConstant.recentTrans,
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RecMoney()),
                                  );
                                },
                                child: Text(TextConstant.recieveMoney),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(ColorConstants.color22))),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          recentTrans(),
                          recentTrans(),
                          recentTrans(),
                          recentTrans()
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            //balance
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(ColorConstants.safeAreacolor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    TextConstant.portfolio,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    TextConstant.money,
                                    style: TextStyle(
                                        fontSize: 50,
                                        color: Color(ColorConstants.color24)),
                                  ),
                                  Text(
                                    TextConstant.inThreeAccounts,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(ColorConstants.color24)),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: const Icon(
                                  Icons.bar_chart,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    balpagebox(
                                        context,
                                        TextConstant.federalB,
                                        TextConstant.fbNum,
                                        TextConstant.fbNum2,
                                        ColorConstants.color25),
                                    balpagebox(
                                        context,
                                        TextConstant.sb,
                                        TextConstant.sbNum,
                                        TextConstant.sbNum2,
                                        ColorConstants.color26),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    balpagebox(
                                        context,
                                        TextConstant.bb,
                                        TextConstant.bbNum1,
                                        TextConstant.bbNum2,
                                        ColorConstants.color27),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              TextConstant.addManage,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(ColorConstants.color28),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // offer
            Column(
              children: [
                offercont(
                    context,
                    ColorConstants.color29,
                    ImageConstants.firstbg,
                    ImageConstants.firstimg,
                    TextConstant.mobrecharge,
                    TextConstant.codefirst20),
                offercont(
                    context,
                    ColorConstants.color30,
                    ImageConstants.secbg,
                    ImageConstants.secImg,
                    TextConstant.dthRecharge,
                    TextConstant.dthCode),
                offercont(
                    context,
                    ColorConstants.color31,
                    ImageConstants.thirdbg,
                    ImageConstants.thirdimg,
                    TextConstant.flipkart,
                    TextConstant.flipkartOffer),
                offercont(
                    context,
                    ColorConstants.color30,
                    ImageConstants.fourthbg,
                    ImageConstants.fourthimg,
                    TextConstant.offOnFlight,
                    TextConstant.flightOffers),
              ],
            ),
            //rewards
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  //Main Container
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: MediaQuery.of(context).size.height * .25,
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
                                color: Color(ColorConstants.color24),
                                fontSize: 35),
                          ),
                        ),
                        //text3
                        Text(
                          TextConstant.plusMoney,
                          style: TextStyle(
                              color: Color(ColorConstants.color24),
                              fontSize: 20),
                        ),
                        //button
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              TextConstant.cbhistory,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(ColorConstants.color28),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 8.0, top: 5),
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
                          TextConstant.kfcOrder),
                      // rewardcont(
                      //     context,
                      //     ColorConstants.color37,
                      //     ImageConstants.rewardbg2,
                      //     ImageConstants.rewardimg2,
                      //     TextConstant.amazonCashBack,
                      //     TextConstant.minOrder)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      length: 4,
    );
  }
}
