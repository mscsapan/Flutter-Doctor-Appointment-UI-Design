import 'package:flutter/material.dart';

class SwipePageController extends ChangeNotifier {
  int position = 0;

  void swipePage(int index) {
    position = index;
    notifyListeners();
  }
}
