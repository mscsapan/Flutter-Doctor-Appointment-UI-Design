import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/screens/conversation/audio_call_screen.dart';
import 'package:doctor_appointment_design/screens/conversation/messaging_screen.dart';
import 'package:doctor_appointment_design/screens/conversation/video_call_screen.dart';
import 'package:doctor_appointment_design/screens/conversation/my_appointment_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewDoctorScreen extends StatelessWidget {
/*  final String image;
  final String name;
  final String designation;
  final String college;
  final String stars;

  ReviewDoctorScreen(
      {Key? key,
      required this.image,
      required this.name,
      required this.college,
      required this.stars,
      required this.designation})
      : super(key: key);*/

  final List<IconData> icons = [
    FontAwesomeIcons.phoneAlt,
    FontAwesomeIcons.commentDots,
    FontAwesomeIcons.video,
    FontAwesomeIcons.solidClock,
  ];
  final List<String> connection = [
    'Audio Call Doctor',
    'Live Chat With Doctor',
    'Video Call Doctor',
    'Set New Schedule'
  ];

  final List<Widget> conversationsScreen = [
    AudioCallScreen(),
    MessagingScreen(),
    VideoCallScreen(),
    MyAppointmentScreen(),
  ];

  nameStyle() => GoogleFonts.raleway(
      fontSize: 14.0, color: mCheckIconColor, letterSpacing: 1.2);
  nameHeadingStyle() => GoogleFonts.raleway(fontSize: 14.0);
  infoStyle() => GoogleFonts.roboto(fontSize: 15.0, letterSpacing: 0.6);
  infoStyle2() =>
      GoogleFonts.playfairDisplay(fontSize: 15.0, letterSpacing: 0.6);
  Widget visitingInformation() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 90.0,
        width: double.infinity,
        //color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(FontAwesomeIcons.clock, size: 18.0, color: Colors.grey),
                SizedBox(width: 8.0),
                Text('Visiting Time',
                    style: GoogleFonts.openSans(
                        fontSize: 18.0, letterSpacing: 1.2))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Morning', style: infoStyle()),
                  Text('Today 09, January 2020', style: infoStyle()),
                  Text('11.00am - 12.30pm',
                      style: infoStyle2().copyWith(color: Colors.blueGrey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget patientInformation() => Container(
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.infoCircle,
                        size: 18.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Patient Information',
                        style: GoogleFonts.openSans(
                            fontSize: 18.0,
                            color: Colors.grey,
                            letterSpacing: 1.2))
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 10.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name', style: nameHeadingStyle()),
                        Text('Age', style: nameHeadingStyle()),
                        Text('Phone', style: nameHeadingStyle()),
                      ],
                    ),
                  ),
                ),
                Column(
                    children: List.generate(
                        3,
                        (index) => Text(' : ',
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mohammad Sapan', style: nameStyle()),
                        Text('24', style: nameStyle()),
                        Text('+8801624188877', style: nameStyle()),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget buildTitleChange(BuildContext context, int index, int position) =>
      SizedBox(
        height: 45.0,
        width: MediaQuery.of(context).size.width * 0.7,
        child: nextButton(
          onTap: () => goToNext(
              context: context,
              screen: position == 0
                  ? conversationsScreen[0]
                  : position == 1
                      ? conversationsScreen[1]
                      : position == 2
                          ? conversationsScreen[2]
                          : conversationsScreen[3]),
          title: position == 0
              ? connection[0]
              : position == 1
                  ? connection[1]
                  : position == 2
                      ? connection[2]
                      : position == 3
                          ? connection[3]
                          : 'Book Appointment',
        ),
      );

  Widget buildConversationWay(int index, Function() onTap, int position) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.0,
        width: 60.0,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10.0, top: 5.0),
        decoration: BoxDecoration(
          color: position == index ? Colors.lightGreen : Colors.white54,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: FaIcon(icons[index], size: 30.0, color: mWhiteColor),
      ),
    );
  }

  Widget feesInformation() => Container(
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.dollarSign,
                        size: 18.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Fees Information',
                        style: GoogleFonts.openSans(
                            fontSize: 18.0, letterSpacing: 1.2))
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 10.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Paid',
                            style: nameHeadingStyle()
                                .copyWith(color: Colors.green)),
                        SizedBox(height: 2),
                        Text('\$6', style: nameHeadingStyle()),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
  final double imageSize = 115.0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: AppBar(
        // title: Text('Review Doctor'),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.17,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: imageSize,
                            width: imageSize,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircleAvatar(
                                maxRadius: imageSize,
                                child: ClipOval(
                                  child: Image.network(
                                    docImages[0],
                                    fit: BoxFit.fill,
                                    height: imageSize,
                                    width: imageSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(names[0],
                                    style: GoogleFonts.raleway(
                                        letterSpacing: 1.4,
                                        fontSize: 18.0,
                                        color: Colors.black)),
                                Text(designations[0],
                                    style: GoogleFonts.roboto(
                                        fontSize: 15.0, letterSpacing: 0.8)),
                                Text(colleges[0],
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.0, letterSpacing: 0.8)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(0.0).copyWith(right: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: mIconColor, size: 18.0),
                            Text(stars[0].toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: height * .652,
              decoration: BoxDecoration(
                color: mDoctorTextColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 70.0,
                    color: mDoctorTextColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Consumer<ScheduleButtonController>(
                            builder: (context, controller, child) =>
                                buildConversationWay(
                                    index,
                                    () => controller.getConnected(index),
                                    controller.position)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: height * .547,
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          visitingInformation(),
                          SizedBox(height: 20.0),
                          patientInformation(),
                          SizedBox(height: 15.0),
                          feesInformation(),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Consumer<ScheduleButtonController>(
                                builder: (context, controller, child) =>
                                    GestureDetector(
                                  onTap: () => controller.heartActive(),
                                  child: Container(
                                    height: 45.0,
                                    width: 45.0,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 6.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: controller.active == true
                                          ? Colors.red
                                          : Color(0xFFE0E0E0),
                                    ),
                                    child: FaIcon(
                                      controller.active == true
                                          ? FontAwesomeIcons.solidHeart
                                          : FontAwesomeIcons.heart,
                                      size: 20.0,
                                      color: controller.active == true
                                          ? mWhiteColor
                                          : mWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  1,
                                  (index) => Consumer<ScheduleButtonController>(
                                    builder: (context, controller, child) =>
                                        buildTitleChange(
                                      context,
                                      index,
                                      controller.position,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
