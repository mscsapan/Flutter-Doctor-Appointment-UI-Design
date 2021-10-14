import 'package:doctor_appointment_design/screens/forgot_password_screen.dart';
import 'package:doctor_appointment_design/screens/onboarding_screen.dart';
import 'package:doctor_appointment_design/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/swipe_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SwipePageController())
      ],
      child: MaterialApp(
        home: ForgotPassword(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
