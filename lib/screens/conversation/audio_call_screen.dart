import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/listview/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioCallScreen extends StatelessWidget {
  AudioCallScreen({Key? key}) : super(key: key);
  final double conSize = 100.0;
  final double conSize2 = 95.0;
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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: conversationAppBar(),
      body: Container(
        height: height,
        width: width,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Outgoing Call...',
                      style: GoogleFonts.raleway(
                          fontSize: 16.0, letterSpacing: 1.5)),
                  SizedBox(height: 6.0),
                  Container(
                    height: conSize,
                    width: conSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: mDoctorTextColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.5),
                      child: Container(
                        height: conSize - 5.0,
                        width: conSize - 5.0,
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Image.network(
                              docImages[1],
                              fit: BoxFit.fill,
                              height: conSize2,
                              width: conSize2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(names[1],
                      style: GoogleFonts.raleway(
                          fontSize: 20.0, letterSpacing: 1.5)),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('10',
                          style: GoogleFonts.raleway(
                              fontSize: 20.0, letterSpacing: 1.0)),
                      Text(':',
                          style: GoogleFonts.raleway(
                              fontSize: 20.0, letterSpacing: 1.0)),
                      Text('38',
                          style: GoogleFonts.raleway(
                              fontSize: 20.0, letterSpacing: 1.0)),
                    ],
                  )
                ],
              ),
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
