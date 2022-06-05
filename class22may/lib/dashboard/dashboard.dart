import 'package:class22may/dashboard/categories.dart';
import 'package:class22may/dashboard/offers.dart';
import 'package:class22may/dashboard/popular_products.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Offers(), PopularProducts(), Categories()],
    );
  }
}
