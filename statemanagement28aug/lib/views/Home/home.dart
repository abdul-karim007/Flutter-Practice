// View
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagement28aug/View%20Models/Home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${viewModel.counter}'),
            ElevatedButton(
                onPressed: () {
                  viewModel.inc();
                  
                },
                child: Text('Add'))
          ],
        )),
      ),
    );
  }
}
