import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mBackgroundColor,
        body: Center(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Doctor',
                  style: doctorTextStyle(),
                ),
                Text(
                  'Appointment',
                  style: doctorTextStyle().copyWith(color: mWhiteColor),
                ),
                SizedBox(height: 70.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('Get Started', style: TextStyle(fontSize: 16.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
