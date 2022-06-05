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
                    child: Text(
                      'Whatsapp',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.search, size: 30),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    child: Icon(Icons.more_vert, size: 30),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: [
                CustomListTile(
                    'Abdul', 'Hi whatsup?', Colors.blue, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.grey, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.red, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
                CustomListTile(
                    'Ali', 'Kahan ho?', Colors.black54, 'assets/logo.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
