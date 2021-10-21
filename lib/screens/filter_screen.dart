import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/all_list_items.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  Widget buildStatus(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(designations[index],
              style:
                  GoogleFonts.raleway(fontSize: 16.0, color: mBackgroundColor)),
          FaIcon(FontAwesomeIcons.checkCircle,
              size: 18.0,
              color: index == 0 ? mDoctorTextColor : mCheckIconColor)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: doctorsAppBar('Filter', widget: true),
        body: SizedBox(
          height: height,
          width: width,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, left: 10.0, bottom: 8.0),
                child: Text('Doctor Status',
                    style: GoogleFonts.openSans(fontSize: 20.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                child: Text('All Status',
                    style: GoogleFonts.raleway(fontSize: 16.0)),
              ),
              Column(
                children: List.generate(
                    designations.length, (index) => buildStatus(index)),
              ),
              //SizedBox(height: 20.0),
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, left: 10.0, bottom: 8.0),
                child: Text('Consult Type',
                    style: GoogleFonts.openSans(fontSize: 20.0)),
              ),
              Column(
                children: List.generate(
                    consultType.length, (index) => buildStatus(index)),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 55.0,
                  child: nextButton(
                      onTap: () => print('Done Pressed..'), title: 'Done'),
                ),
              )
            ],
          ),
        ));
  }
}
