import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingView extends StatelessWidget {
  final String heading;

  const HeadingView({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading,
              style: GoogleFonts.openSans(
                  fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text(
            'See all',
            style: GoogleFonts.roboto(
                color: mDoctorTextColor,
                fontSize: 15.0,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
