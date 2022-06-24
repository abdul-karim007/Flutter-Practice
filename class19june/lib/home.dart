import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
          animationDuration: Duration(seconds: 2),
          length: 2,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Text(
                      'abc',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text('bcd', style: TextStyle(fontSize: 25)),
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: double.infinity,
                        ),
                        Container(
                          color: Colors.purple,
                          height: 100,
                          width: double.infinity,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.purple,
                          height: 100,
                          width: double.infinity,
                        ),
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
