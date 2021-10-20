import 'package:doctor_appointment_design/views/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/nav_controller.dart';
import 'controller/swipe_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SwipePageController()),
        ChangeNotifierProvider(create: (context) => NavigationController())
      ],
      child: MaterialApp(
        home: BottomNavBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
