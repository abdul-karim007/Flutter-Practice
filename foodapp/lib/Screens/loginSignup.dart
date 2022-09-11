import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/Constants/customColor.dart';
import 'package:foodapp/Constants/img.dart';
import 'package:foodapp/Constants/textConstant.dart';
import 'package:foodapp/Screens/login.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffEDEDED),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 75),
                    child: Image(
                      image: AssetImage(ImageConstant.loginlogo),
                      height: 200,
                    ),
                  ),
                  TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Color(CustomClr.appColor),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            CustomText.login,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(CustomText.signUp,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        )
                      ]),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [Login(), Login()]),
            )
          ],
        ),
      ),
    );
  }
}
