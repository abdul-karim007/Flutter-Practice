import 'package:ecompractice/constants/colors.dart';
import 'package:ecompractice/functions/loginTextbutton.dart';
import 'package:ecompractice/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(ColorConstant.mainBlue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: Container()),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child:
                    Image(image: AssetImage('assets/images/logincircle1.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Opacity(
                    opacity: 0.5,
                    child: Image(
                      image: AssetImage(
                        'assets/images/logincircle2.png',
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 83),
            child: Text(
              'Welcome\nBack',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .61,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      decoration: InputDecoration(fillColor: Colors.grey),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outlined,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        suffix: loginTextbutton('Show')),
                  ),
                ),
                loginTextbutton('Forgot Password?'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .08,
                  child: ElevatedButton(
                    onPressed: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home()),
  );

},
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(ColorConstant.mainBlue),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                loginTextbutton('Create Account')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
