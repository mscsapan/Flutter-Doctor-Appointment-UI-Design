import 'package:flutter/material.dart';

class ScheduleButtonController extends ChangeNotifier {
  int current = 0;
  int current2 = 0;
  int current3 = 0;
  int current4 = 0;
  bool active = false;
  int position = 0;
  int option = 0;

  int second = 0;
  int minute = 0;
  int hour = 0;
  final String call = 'Outgoing Call...';

  void updateDuration() {
    second++;
    if (second >= 59) {
      minute++;
      if (minute >= 59) {
        hour++;
        minute = 0;
      }
      second = 0;
    }
    notifyListeners();
  }

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

  void setActivity4(int index) {
    current4 = index;
    notifyListeners();
  }

  void heartActive() {
    active = !active;
    notifyListeners();
  }

  void getConnected(int index) {
    position = index;
    notifyListeners();
  }

  void chooseOption(int index) {
    option = index;
    notifyListeners();
  }
}
