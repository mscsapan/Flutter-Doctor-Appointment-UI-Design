import 'package:flutter/material.dart';

class NavigationController extends ChangeNotifier {
  int currentIndex = 0;
  void navController(int position, int index) {
    position = index;
    notifyListeners();
  }
}
