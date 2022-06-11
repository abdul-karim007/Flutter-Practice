import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/ImageConstants/imgconstants.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';
import 'package:mobilepaymentapp/functions/SafeArea.dart';
import 'package:mobilepaymentapp/functions/offerscont.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          tospafeArea(context),
          Row(
            children: [
              offercont(context, ColorConstants.color29, ImageConstants.firstbg,
                  ImageConstants.firstimg),
            ],
          ),
          Row(
            children: [
              offercont(context, ColorConstants.color30, ImageConstants.secbg,
                  ImageConstants.secImg),
            ],
          ),
          Row(
            children: [
              offercont(context, ColorConstants.color31, ImageConstants.thirdbg,
                  ImageConstants.thirdimg),
            ],
          ),
          Row(
            children: [
              offercont(context, ColorConstants.color30,
                  ImageConstants.fourthbg, ImageConstants.fourthimg),
            ],
          )
        ],
      ),
    );
  }
}
