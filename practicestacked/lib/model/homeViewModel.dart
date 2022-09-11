import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String title = 'Stacked';
  int counter = 0;

  update() {
    counter++;
    notifyListeners();
  }
}
