import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/screens/conversation/video_call_screen.dart';
import 'package:doctor_appointment_design/screens/onboarding_screen.dart';
import 'package:doctor_appointment_design/screens/splash_screen.dart';
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
        ChangeNotifierProvider(create: (context) => NavigationController()),
        ChangeNotifierProvider(create: (context) => ScheduleButtonController()),
      ],
      child: MaterialApp(
        //home: ReviewDoctorScreen(),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
