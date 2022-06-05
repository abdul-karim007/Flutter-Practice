// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        color: Colors.amberAccent,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 400,
                        width: 200,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 500,
                        width: 200,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 600,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        color: Colors.amberAccent,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 400,
                        width: 200,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 500,
                        width: 200,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 600,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}















































// Container(child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 200,
//                           width: 200,
//                           color: Colors.brown,
//                         ),
//                         Container(
//                           height: 200,
//                           width: 200,
//                           color: Colors.purple,
//                         ),
//                         Container(
//                           height: 200,
//                           width: 200,
//                           color: Colors.green,
//                         ),
//                         Container(
//                           height: 200,
//                           width: 200,
//                           color: Colors.lightBlue,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//             ),