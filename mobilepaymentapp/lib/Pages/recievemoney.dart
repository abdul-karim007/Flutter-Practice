import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/ImageConstants/imgconstants.dart';
import 'package:mobilepaymentapp/Constants/colorConstants/colorConstants.dart';

import '../Constants/TextConstants/Textconstant.dart';

class RecMoney extends StatelessWidget {
  const RecMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color(ColorConstants.color33),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TextConstant.recieveMoney,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Image(
                        image: AssetImage(ImageConstants.qrCode),
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .8,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              TextConstant.otherOptions,
              style: TextStyle(
                color: Color(ColorConstants.color37),
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color(ColorConstants.color33),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.yourPayID,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        TextConstant.payID,
                        style: TextStyle(
                            color: Color(
                              ColorConstants.color24,
                            ),
                            fontSize: 18),
                      ),
                      Icon(
                        Icons.copy_outlined,
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color(ColorConstants.color33),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.showBnkAcctDetails,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
