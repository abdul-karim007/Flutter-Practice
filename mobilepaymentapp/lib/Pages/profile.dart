import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobilepaymentapp/Constants/ImageConstants/imgconstants.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12, top: 36, bottom: 12),
            child: Container(
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff1F222A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image(
                            image: AssetImage(ImageConstants.dp),
                            height: 50,
                            width: 50,
                          ),
                          radius: 20,
                        ),
                        //   children: [
                        Text(
                          TextConstant.elsa,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Column(
                          children: [
                            Text(
                              TextConstant.level,
                              style: TextStyle(
                                  color: Color(0xffB0BEC5), fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                '435 EXP',
                                style: TextStyle(
                                    color: Color(0xffB0BEC5), fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '1200',
                                style: TextStyle(
                                    color: Color(0xff4D5DFA), fontSize: 30),
                              ),
                              Text(
                                'Tranactions',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                    color: Color(0xff4D5DFA), fontSize: 30),
                              ),
                              Text(
                                'Rank',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Account Settings',
              style: TextStyle(color: Colors.white, fontSize: 15),
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
          Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff1F222A),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.receipt_long,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.warning_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.timer_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Transactions',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Pending Transactions',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Refund Status',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Help and Support',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * .20,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1F222A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.warning_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.timer_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.mail_outline_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'About US',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'FeedBack',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
