import 'package:flutter/material.dart';

class ScheduleButtonController extends ChangeNotifier {
  int current = 0;
  int current2 = 0;
  int current3 = 0;

  void setActivity(int index) {
    current = index;
    notifyListeners();
  }

  void setActivity2(int index) {
    current2 = index;
    notifyListeners();
  }

  void setActivity3(int index) {
    current3 = index;
    notifyListeners();
  }
}
