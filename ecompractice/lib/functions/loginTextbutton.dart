import 'package:ecompractice/constants/colors.dart';
import 'package:flutter/material.dart';

loginTextbutton(text) {
  return TextButton(
      onPressed: () {},
      child:
          Text(text, style: TextStyle(color: Color(ColorConstant.mainBlue))));
}

Widget tabSection(BuildContext context) {
  TabController? abc;
  return DefaultTabController(
    length: 4,
    child: Column(
      children: [
        TabBar(
            controller: abc,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: "Wearable",
              ),
              Tab(
                text: "Laptop",
              ),
              Tab(
                text: "Phones",
              ),
              Tab(
                text: "Drones",
              ),
            ]),
        // TabBarView(
        //     controller: abc,
        //     children: [Text('A'), Text('data'), Text('data'), Text('data')])
      ],
    ),
    // TabBarView(
    //   controller: tabController,
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * .5,
    //         child: Icon(Icons.flight, size: 100),
    //       ),
    //       Container(
    //           height: MediaQuery.of(context).size.height * .5,
    //           child: Icon(Icons.directions_transit, size: 100)),
    //       Container(
    //           height: MediaQuery.of(context).size.height * .5,
    //           child: Icon(Icons.directions_car, size: 100)),
    //       Container(
    //           height: MediaQuery.of(context).size.height * .5,
    //           child: Icon(Icons.directions_car, size: 100)),
    //     ],
    //   ),
  );
}
