import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewDoctorScreen extends StatelessWidget {
  final List<IconData> icons = [
    FontAwesomeIcons.phoneAlt,
    FontAwesomeIcons.commentDots,
    FontAwesomeIcons.video,
    FontAwesomeIcons.solidClock,
  ];

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
              height: height * 0.16,
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
                            height: 120.0,
                            width: 120.0,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircleAvatar(
                                maxRadius: 120.0,
                                child: ClipOval(
                                  child: Image.network(
                                    docImages[1],
                                    fit: BoxFit.fill,
                                    height: 120.0,
                                    width: 120.0,
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
                                Text(names[1],
                                    style: GoogleFonts.raleway(
                                        letterSpacing: 1.4,
                                        fontSize: 18.0,
                                        color: Colors.black)),
                                Text(designations[1],
                                    style: GoogleFonts.roboto(
                                        fontSize: 15.0, letterSpacing: 0.8)),
                                Text(colleges[1],
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
                            Text(stars[4].toString()),
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
                          //Spacer(),
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
                                          : Color(
                                              0xFFE0E0E0,
                                            ),
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
                              SizedBox(
                                height: 45.0,
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Consumer<ScheduleButtonController>(
                                  builder: (context, controller, child) =>
                                      nextButton(
                                          onTap: () {},
                                          title: 'Book Appointment'),
                                ),
                              ),
                            ],
                          )
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
