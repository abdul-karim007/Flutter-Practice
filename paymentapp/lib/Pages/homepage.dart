import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import '../Constants/ImageConstants/imgconstants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 26, 32, 1),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              Image(
                image: AssetImage(ImageConstants.dp),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: TextConstant.nunito,
                        fontFamilyFallback: [TextConstant.spartanBold],
                        color: Color(0xff4d5dfa)),
                  ),
                ),
              ),
            ],
          ),
          radius: 40,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(24, 26, 32, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
