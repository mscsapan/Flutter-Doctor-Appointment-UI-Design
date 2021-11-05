import 'dart:async';

import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/screens/review_doctor_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final List<IconData> icons = [
    FontAwesomeIcons.microphoneSlash,
    FontAwesomeIcons.phoneAlt,
    FontAwesomeIcons.commentDots,
    FontAwesomeIcons.video,
    //FontAwesomeIcons.solidClock,
  ];

  Widget buildConversation(int index) => Container(
        height: 70.0,
        width: 70.0,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10.0, top: 5.0),
        decoration: BoxDecoration(
          color: index == 3 ? Colors.red : Colors.blueGrey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: FaIcon(icons[index], size: 32.0, color: mWhiteColor),
      );

  nameStyle() => GoogleFonts.raleway(
      fontSize: 20.0,
      letterSpacing: 1.0,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  TextStyle durationStyle() {
    return GoogleFonts.raleway(fontSize: 20.0, letterSpacing: 1.0);
  }

  @override
  void initState() {
    final durationController =
        Provider.of<ScheduleButtonController>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      durationController.updateDuration();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mDoctorTextColor,
      // appBar: conversationAppBar(color: mDoctorTextColor),
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height * 0.7,
              width: width,
              margin: EdgeInsets.only(bottom: 10.0),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    child: Image.network(docImages[1], fit: BoxFit.cover),
                  ),
                  Positioned(
                    right: 10.0,
                    top: height * 0.7 / 3.0,
                    child: Container(
                      height: 150.0,
                      width: 140.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/my_pic.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: height * 0.7 / 7.5,
                      left: 20.0,
                      child: GestureDetector(
                        onTap: () => goToNext(
                            context: context, screen: ReviewDoctorScreen()),
                        child: Icon(Icons.arrow_back, color: Colors.black),
                      )),
                ],
              ),
            ),
            Text(names[1], style: nameStyle()),
            SizedBox(height: 2.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<ScheduleButtonController>(
                  builder: (context, duration, child) =>
                      Text(duration.hour.toString(), style: durationStyle()),
                ),
                Text(':', style: durationStyle()),
                Consumer<ScheduleButtonController>(
                  builder: (context, duration, child) =>
                      Text(duration.minute.toString(), style: durationStyle()),
                ),
                Text(':', style: durationStyle()),
                Consumer<ScheduleButtonController>(
                  builder: (context, duration, child) =>
                      Text(duration.second.toString(), style: durationStyle()),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  icons.length, (index) => buildConversation(index)),
            ),
            SizedBox(height: 90.0)
          ],
        ),
      ),
    );
  }
}
