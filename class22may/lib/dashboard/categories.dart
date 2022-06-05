import 'package:flutter/material.dart';

import '../widgets/textwidget.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      height: 200,
      width: 200,
      child: textWidget('Data'),
    );
  }
}
