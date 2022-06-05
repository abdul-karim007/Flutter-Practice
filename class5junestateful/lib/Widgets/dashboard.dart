import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: Icon(Icons.message_sharp),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 7,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 5,
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.blue,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   const Counter({Key? key}) : super(key: key);

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   var a = 0;
//   addValue() {
//     setState(() {
//       a--;
//     });
//     print(a);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '$a',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(onPressed: addValue, child: Icon(Icons.add))
//           ],
//         ),
//       ),
//     );
//   }
// }
