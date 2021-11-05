import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/home_screen.dart';
import 'package:doctor_appointment_design/screens/sign_up_screen.dart';
import 'package:doctor_appointment_design/views/already_account.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/horizontal_line.dart';
import 'package:doctor_appointment_design/views/input_field.dart';
import 'package:doctor_appointment_design/views/remember_me.dart';
import 'package:doctor_appointment_design/views/social_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: []);
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(top: 0, child: SvgPicture.asset('assets/top2.svg')),
          Positioned(
            top: 40.0,
            left: 170,
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 25.0, color: mWhiteColor),
            ),
          ),
          Positioned.fill(
            top: 180.0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'Welcome to Back!',
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      color: mDoctorTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  InputField(icon: Icons.email, hintText: 'mscsapan@gmail.com'),
                  SizedBox(height: 15.0),
                  InputField(
                    icon: Icons.lock,
                    hintText: 'Password',
                    suffix: Icons.visibility_off,
                  ),
                  SizedBox(height: 10.0),
                  RememberMe(),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 45.0,
                    child: nextButton(
                        onTap: () =>
                            goToNext(context: context, screen: HomeScreen()),
                        title: 'Sign In'),
                  ),
                  SizedBox(height: 10.0),
                  HorizontalLine(),
                  SocialIcon(),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, child: SvgPicture.asset('assets/down.svg')),
          AlreadyAccount(
            message: 'Don\'t have an account? ',
            method: 'Sign Up',
            onTap: () => goToNext(context: context, screen: SignUpScreen()),
          ),
        ],
      ),
    );
  }
}
