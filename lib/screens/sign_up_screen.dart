import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/sign_in_screen.dart';
import 'package:doctor_appointment_design/views/already_account.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'Sign Up',
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
                    'sign up to continue'.toUpperCase(),
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  InputField(icon: Icons.person, hintText: 'Mohammad Sapan'),
                  SizedBox(height: 15.0),
                  InputField(icon: Icons.email, hintText: 'mscsapan@gmail.com'),
                  SizedBox(height: 15.0),
                  InputField(
                    icon: Icons.lock,
                    hintText: 'Password',
                    suffix: Icons.visibility_off,
                  ),
                  SizedBox(height: 15.0),
                  InputField(
                    icon: Icons.lock,
                    hintText: 'Confirm Password',
                    suffix: Icons.visibility_off,
                  ),
                  SizedBox(height: 25.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 45.0,
                    child: nextButton(onTap: () {}, title: 'Sign Up'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, child: SvgPicture.asset('assets/down.svg')),
          AlreadyAccount(
            message: 'Already have an account? ',
            method: 'Sign In',
            onTap: () => goToNext(context: context, screen: SignInScreen()),
          ),
        ],
      ),
    );
  }
}
