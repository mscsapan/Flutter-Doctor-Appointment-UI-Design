import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/appointment_view.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: mLightGrey,
        appBar: doctorsAppBar('Appointment'),
        body: Container(
          height: height,
          width: width,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, left: 10.0, bottom: 8.0),
                child:
                    Text('Today', style: GoogleFonts.raleway(fontSize: 18.0)),
              ),
              Container(
                height: height * 0.35,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  height: height * 0.20,
                  //width: double.infinity,
                  child: Column(
                    children: List.generate(
                        2,
                        (index) => TodayAppointment(
                            image: docImages[index],
                            name: names[index],
                            connection:
                                index == 0 ? 'Voice Call' : 'Video Call',
                            time: index == 0
                                ? '11.30am - 12.30pm'
                                : '10.00am - 11.00am')),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, left: 10.0, bottom: 8.0),
                child: Text('Yesterday',
                    style: GoogleFonts.raleway(fontSize: 18.0)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: List.generate(
                    names.length,
                    (index) => index >= 2
                        ? TodayAppointment(
                            image: docImages[index],
                            name: names[index],
                            connection:
                                index % 2 == 0 ? 'Voice Call' : 'Video Call',
                            time: index % 2 == 0
                                ? '11.30am - 12.30pm'
                                : '10.00am - 11.00am')
                        : SizedBox(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
