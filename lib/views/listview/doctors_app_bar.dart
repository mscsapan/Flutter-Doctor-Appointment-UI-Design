import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/views/notifications_bell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget doctorsAppBar(String title,
        {bool widget = false, bool backArrow = false}) =>
    AppBar(
      elevation: 0.0,
      shadowColor: Colors.transparent,
      backgroundColor: mDoctorTextColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/left_arrow.svg',
            width: 40.0,
            height: 40.0,
            color: mWhiteColor,
          ),
          Text(title,
              style: GoogleFonts.openSans(
                  fontSize: 18.0, fontWeight: FontWeight.w600)),
          widget == false
              ? NotificationBell()
              : GestureDetector(
                  onTap: () => print('Reset All Pressed'),
                  child: Text(
                    'Reset All',
                    style: GoogleFonts.openSans(
                        fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                ),
        ],
      ),
    );
