import 'package:class22may/widgets/textwidget.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      height: 100,
      width: 200,
      child: textWidget('Data'),
    );
  }
}
