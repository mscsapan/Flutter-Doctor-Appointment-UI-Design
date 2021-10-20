import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/views/all_list_items.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final double conSize = 100.0;

  Widget profileSetting(int index) {
    return ListTile(
      leading: Icon(icons[index], size: 18.0),
      title: Text(title[index]),
      trailing: Icon(Icons.arrow_forward_ios, size: 18.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: doctorsAppBar('Profile'),
      body: Center(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                height: height * 0.20,
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: mDoctorTextColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: conSize,
                      width: conSize,
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/my_pic.jpg',
                            fit: BoxFit.fill,
                            height: conSize,
                            width: conSize,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Mohammad Sapan',
                      style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          color: Colors.white70,
                          letterSpacing: 0.8),
                    ),
                    Text(
                      'mscsapan@gmail.com',
                      style: GoogleFonts.lato(
                          fontSize: 18.0, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: height * 0.38,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                //color: Colors.red,
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    children: List.generate(
                      title.length,
                      (index) => profileSetting(index),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        lastMessage.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(lastMessage[index]),
                            )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
