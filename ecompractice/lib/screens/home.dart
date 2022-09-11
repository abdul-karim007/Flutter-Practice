import 'package:ecompractice/functions/loginTextbutton.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 10, top: 10),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .05,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_outlined),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              'Order Online\nCollect in Store',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
            ),
          ),
          tabSection(context)
        ],
      ),
    );
  }
}
