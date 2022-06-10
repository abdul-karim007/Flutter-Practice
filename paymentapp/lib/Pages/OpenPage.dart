import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/TextConstants/Textconstant.dart';
import 'package:mobilepaymentapp/Pages/loginpage.dart';

openPage() {
  return Scaffold(
    body: Container(
      color: Color.fromRGBO(24, 26, 32, 1),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   child: Image(
          //     image: AssetImage(ImageConstants.openpage),
          //   ),
          // ),
          Center(
            child: Image(
              image: AssetImage('assets/images/open_page.png'),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Builder(
                  builder: (context) => Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          blurRadius: 10,
                          offset: Offset(2, 2))
                    ]),
                    child: MaterialButton(
                      height: 45,
                      visualDensity: VisualDensity.comfortable,
                      elevation: 100,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      color: Color.fromRGBO(77, 93, 250, 1),
                      child: Text(
                        TextConstant.openpagebutton,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: TextConstant.russoOne),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  TextConstant.openpage,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white54),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(77, 93, 250, 1),
                      radius: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(77, 93, 250, 1),
                      radius: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(77, 93, 250, 1),
                      radius: 5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
