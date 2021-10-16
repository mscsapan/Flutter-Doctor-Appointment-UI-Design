import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget doctorsAppBar(String title) => AppBar(
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
          Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 2.0,
                right: -1,
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
