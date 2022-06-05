import 'package:class22may/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import '../containers/container.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: contFunc(
        Colors.blue,
        100,
        100,
        textWidget('Offers'),
      ),
    );
  }
}
