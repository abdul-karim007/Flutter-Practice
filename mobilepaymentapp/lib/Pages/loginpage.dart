import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mobilepaymentapp/Constants/ImageConstants/imgconstants.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import 'package:mobilepaymentapp/Pages/tabBar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.loginpage),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            // Image(
            //   image: AssetImage(
            //     ImageConstants.loginpage,
            //   ),
            // height: double.infinity,
            //   width: double.infinity,
            // ),
            Positioned(
              top: 100,
              left: 30,
              child: Text(TextConstant.loginpage,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: TextConstant.sansSerif,
                      fontFamilyFallback: [TextConstant.nunitoB])),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(color: Colors.black38),
                      ),
                      controller: TextEditingController()
                        ..text = TextConstant.number92,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: TextConstant.sansSerif,
                          fontFamilyFallback: [TextConstant.spartanBold],
                          color: Color(0xff4d5dfa)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: MaterialButton(
                    height: 60,
                    minWidth: 360,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    color: Color(ColorConstants.color34),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const tabbarView()),
                      );
                    },
                    child: Text(TextConstant.verify),
                  ),
                ),
                Text(
                  TextConstant.safedetails,
                  style: TextStyle(
                    fontFamily: TextConstant.sansSerif,
                    fontFamilyFallback: [TextConstant.nunitoR],
                    color: Color(0xff7c82ba),
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    TextConstant.safedetails,
                    style: TextStyle(
                      fontFamily: TextConstant.sansSerif,
                      fontFamilyFallback: [TextConstant.nunitoR],
                      color: Color(0xff7c82ba),
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
