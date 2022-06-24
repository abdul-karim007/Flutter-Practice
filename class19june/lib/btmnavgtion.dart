import 'package:class19june/page/scr1.dart';
import 'package:class19june/page/scr2.dart';
import 'package:class19june/page/scr3.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int currentTab = 0;
  Widget currentScreen = Screen1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentScreen,
        bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Screen1();
                    currentTab = 0;
                  });
                },
                icon: Icon(Icons.home),
                color: currentTab == 0 ? Colors.white : Colors.black,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Screen2();
                    currentTab = 1;
                  });
                },
                icon: Icon(Icons.settings),
                color: currentTab == 1 ? Colors.white : Colors.black,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Screen3();
                    currentTab = 2;
                  });
                },
                icon: Icon(Icons.favorite),
                color: currentTab == 2 ? Colors.white : Colors.black,
              ),
            ],
          ),
        )
        //BottomNavigationBar(items: <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //   BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        //   BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites')
        // ]),
        );
  }
}
