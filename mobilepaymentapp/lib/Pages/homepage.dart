import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import '../Constants/ImageConstants/imgconstants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          Container(
            color: Color(ColorConstants.safeAreacolor),
            child: SafeArea(
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
                                fontFamilyFallback: [
                                  TextConstant.spartanSemiBold
                                ]),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.height * .025,
                          color: Colors.transparent,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              TextConstant.home,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.height * .025,
                          color: Colors.transparent,
                          child: Text(
                            TextConstant.balance,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.height * .025,
                          color: Colors.transparent,
                          child: Text(
                            TextConstant.offers,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.height * .025,
                          color: Colors.transparent,
                          child: Text(
                            TextConstant.rewards,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                TextConstant.moneyTransfer,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(ColorConstants.moreContainer),
                ),
                alignment: Alignment.center,
                child: Text(
                  TextConstant.more,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(ColorConstants.moreColor),
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}
