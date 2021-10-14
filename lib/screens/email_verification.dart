import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/reset_password_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/four_digit_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        children: [
          Positioned(top: 0, child: SvgPicture.asset('assets/top2.svg')),
          Positioned(
            top: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(Icons.arrow_back, color: Colors.white)),
                SizedBox(width: 100),
                Text(
                  'Email Verification',
                  style:
                      GoogleFonts.openSans(fontSize: 20.0, color: mWhiteColor),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 250.0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'Get Your Code',
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      color: mDoctorTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Please Enter the 4 digit code sent\n to email address',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25.0),
                  FourDigitCode(),
                  SizedBox(height: 15.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 45.0,
                    child: nextButton(
                        onTap: () =>
                            goToNext(context: context, screen: ResetPassword()),
                        title: 'Verify and Proceed'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, child: SvgPicture.asset('assets/down.svg')),
        ],
      ),
    );
  }
}
