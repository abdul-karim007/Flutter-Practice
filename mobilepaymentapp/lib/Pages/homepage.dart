import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/functions/SafeArea.dart';
import 'package:mobilepaymentapp/functions/homepagesmall.dart';
import 'package:mobilepaymentapp/functions/recentTrans.dart';
import '../Constants/colorConstants/colorConstants.dart';
import '../functions/homepageWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            tospafeArea(context),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        TextConstant.moneyTransfer,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(ColorConstants.moreContainer),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(ColorConstants.moreContainer),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      smallContainer(
                          TextConstant.movies, Icons.movie_outlined, context),
                      smallContainer(
                          TextConstant.trains, Icons.train_outlined, context),
                      smallContainer(TextConstant.bus,
                          Icons.directions_bus_outlined, context),
                      smallContainer(
                          TextConstant.flight, Icons.flight_outlined, context),
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
                      smallContainer(
                          TextConstant.invest, Icons.bar_chart_sharp, context),
                      smallContainer(TextConstant.loans, Icons.money, context),
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
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              TextConstant.recentTrans,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
    );
  }
}
