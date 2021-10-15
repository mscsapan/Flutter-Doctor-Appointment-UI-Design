import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget appBarView() => AppBar(
      elevation: 0.0,
      backgroundColor: mDoctorTextColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(FontAwesomeIcons.bars),
          Column(
            children: [
              Text(
                'Current Location',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.normal, fontSize: 16.0),
              ),
              Text(
                'Dhaka',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600, fontSize: 17.0),
              ),
            ],
          ),
          FaIcon(FontAwesomeIcons.mapMarkerAlt)
        ],
      ),
    );
