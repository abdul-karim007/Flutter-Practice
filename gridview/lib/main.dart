import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Wallpaper App'),
        backgroundColor: Colors.black,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 150),
        children: [
          const Image(
            image: const AssetImage('assets/car1.jpg'),
          ),
          const Image(
            image: const AssetImage('assets/car2.jpg'),
          ),
          const Image(
            image: AssetImage('assets/car3.jpg'),
          ),
          const Image(
            image: AssetImage('assets/car4.jpg'),
          ),
          const Image(
            image: AssetImage('assets/car5.jpg'),
          ),
          const Image(
            image: const AssetImage('assets/car6.jpg'),
          ),
        ],
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    ));
  }
}
