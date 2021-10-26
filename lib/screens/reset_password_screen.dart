import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/sign_in_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class ResetPassword extends StatelessWidget {
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
                    child: GestureDetector(
                        onTap: () =>
                            goToNext(context: context, screen: SignInScreen()),
                        child: Icon(Icons.arrow_back, color: Colors.white))),
                SizedBox(width: 100),
                Text(
                  'Reset Password',
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
                    'Enter New Password',
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      color: mDoctorTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Your new password must be different\nfrom previously used Password',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25.0),
                  InputField(
                      icon: Icons.email,
                      hintText: 'New Password',
                      suffix: Icons.visibility_off),
                  SizedBox(height: 10.0),
                  InputField(
                      icon: Icons.email,
                      hintText: 'Confirm Password',
                      suffix: Icons.visibility_off),
                  SizedBox(height: 15.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () =>
                          goToNext(context: context, screen: HomeScreen()),
                      style: ElevatedButton.styleFrom(
                          primary: mDoctorTextColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: Text(
                        'Verify and Proceed',
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          color: mWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
