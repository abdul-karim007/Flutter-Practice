import 'package:whatsappclone/widgets/listTile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Text('Abc'),
      //   title: Center(child: Text('Project')),
      //   actions: [Text('Xyz')],
      //   backgroundColor: Colors.lightGreen,
      // ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.black,
          //   height: MediaQuery.of(context).size.height * 0.15,
          //   width: double.infinity,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: [
          //         TopRow(Colors.white),
          //         TopRow(Colors.brown),
          //         TopRow(Colors.deepOrange),
          //         TopRow(Colors.green),
          //         TopRow(Colors.lightGreen),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            height: 100,
            color: Colors.blueGrey,
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'Whatsapp',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.only(left: 10),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.search, size: 30),
                    alignment: Alignment.centerRight,
                  ),
                  Container(
                    child: Icon(Icons.more_vert, size: 30),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.camera_enhance_rounded,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
                width: MediaQuery.of(context).size.width * .07,
                height: 30,
                color: Colors.blueGrey,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .31,
                height: 30,
                color: Colors.blueGrey,
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .31,
                height: 30,
                color: Colors.blueGrey,
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .31,
                height: 30,
                color: Colors.blueGrey,
                child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: [
                CustomListTile('Abdul', 'Hi whatsup?', Colors.blue,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.grey,
                    'assets/logo.png', context),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.red, 'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
                CustomListTile('Ali', 'Kahan ho?', Colors.black54,
                    'assets/logo.png', context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
        ),
      ],
      ),
    );
  }
}
