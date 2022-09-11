import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/Constants/customColor.dart';
import 'package:foodapp/Constants/img.dart';
import 'package:foodapp/Constants/textConstant.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CustomClr.onBoardColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                Image(
                  image: AssetImage(ImageConstant.logo),
                  height: 70,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              CustomText.onBoardText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(ImageConstant.woman),
                    height: 350,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image(
                      image: AssetImage(
                        ImageConstant.man,
                      ),
                      height: 300,
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.red)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    CustomText.getStarted,
                    style: TextStyle(color: Color(CustomClr.onBoardColor)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
