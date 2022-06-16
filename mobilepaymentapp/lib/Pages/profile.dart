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
              height: MediaQuery.of(context).size.height * .31,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(ColorConstants.color33),
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
                            height: 100,
                            width: 100,
                          ),
                          radius: 20,
                        ),
                        //   children: [
                        Column(
                          children: [
                            Text(
                              TextConstant.elsa,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              TextConstant.level,
                              style: TextStyle(
                                  color: Color(0xffB0BEC5), fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                TextConstant.exp,
                                style: TextStyle(
                                    color: Color(0xffB0BEC5), fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                TextConstant.transNo,
                                style: TextStyle(
                                    color: Color(0xff4D5DFA), fontSize: 30),
                              ),
                              Text(
                                TextConstant.transactions,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                TextConstant.pointNo,
                                style: TextStyle(
                                    color: Color(0xff4D5DFA), fontSize: 30),
                              ),
                              Text(
                                TextConstant.points,
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
                                TextConstant.rank,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: Text(
                            TextConstant.editProfile,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          icon: Icon(Icons.edit),
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
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: Text(
                            TextConstant.setting,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          icon: Icon(Icons.settings),
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
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: Text(
                            TextConstant.share,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          icon: Icon(Icons.share),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ],
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
                          TextConstant.allTrans,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          TextConstant.pendTrans,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          TextConstant.refStatus,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          TextConstant.helpSup,
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
                            TextConstant.aboutUS,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            TextConstant.tNc,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            TextConstant.feedBack,
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
