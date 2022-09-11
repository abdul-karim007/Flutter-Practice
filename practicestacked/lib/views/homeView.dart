import 'package:flutter/material.dart';
import 'package:practicestacked/model/homeViewModel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Row(
            children: [Text(model.title), Text(model.counter.toString())],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: model.update),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
