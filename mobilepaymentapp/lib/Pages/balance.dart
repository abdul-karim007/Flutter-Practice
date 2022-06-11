import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import 'package:mobilepaymentapp/functions/SafeArea.dart';
import 'package:mobilepaymentapp/functions/balpagebox.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          tospafeArea(context),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .55,
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              balpagebox(
                                  context,
                                  TextConstant.bb,
                                  TextConstant.bbNum1,
                                  TextConstant.bbNum2,
                                  ColorConstants.color27),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.arrow_forward_ios_outlined,
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
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(ColorConstants.color28),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
    );
  }
}
