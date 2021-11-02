import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/review_doctor_screen.dart';
import 'package:doctor_appointment_design/views/appointment_view.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final String image;
  final String name;
  final String designation;
  final String college;
  final String stars;

  const DoctorDetailsScreen(
      {Key? key,
      required this.image,
      required this.name,
      required this.college,
      required this.stars,
      required this.designation})
      : super(key: key);

  Widget buildDoctorExperience() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
                height: 45.0,
                width: 45.0,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 6.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFE0E0E0)),
                child: FaIcon(FontAwesomeIcons.userFriends, size: 20.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('1000+',
                    style: GoogleFonts.openSans(
                        fontSize: 14.0, color: Colors.white70)),
                Text('Palestine',
                    style: GoogleFonts.openSans(
                        fontSize: 12.0, color: Colors.white70))
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
                height: 45.0,
                width: 45.0,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 6.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFE0E0E0)),
                child: FaIcon(FontAwesomeIcons.award, size: 20.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('5 Years',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 15.0, color: Colors.white70)),
                Text('Experience',
                    style: GoogleFonts.openSans(
                        fontSize: 12.0, color: Colors.white70))
              ],
            ),
          ],
        )
      ]);

  final String docDetails =
      'is the top most orthopaedic specialist in Dhaka Medical College hospital at Dhaka.She achieved several award for her wonderful contribution in her own field.She is available for private consultation.';

  Widget docSchedule(int index) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 65.0,
        width: 55.0,
        //margin: EdgeInsets.only(right: 2.5).,
        decoration: BoxDecoration(
            //color: Colors.red,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
        child: Column(
          children: [
            Container(
              height: 22.0,
              width: 55.0,
              margin: EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                  color: index == 0 ? Colors.green : mDoctorTextColor,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0))),
            ),
            Text('SUN'),
            Text('11'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mLightGrey,
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset(
                  'assets/left_arrow.svg',
                  width: 40.0,
                  height: 40.0,
                  color: mWhiteColor,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 6),
              Text(name,
                  style: GoogleFonts.openSans(
                      fontSize: 18.0, fontWeight: FontWeight.w600)),
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: mDoctorTextColor,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: TodayAppointment(
                  name: name,
                  image: image,
                  connection: designation,
                  time: college,
                  stars: stars,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: height * .652,
                decoration: BoxDecoration(
                    color: mDoctorTextColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0))),
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      //color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 15.0),
                        child: buildDoctorExperience(),
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
                            Text(
                              'About Doctor',
                              style: GoogleFonts.openSans(fontSize: 18.0),
                            ),
                            SizedBox(height: 10.0),
                            Text('$name $docDetails',
                                style: GoogleFonts.raleway(fontSize: 16),
                                textAlign: TextAlign.justify),
                            SizedBox(height: 10.0),
                            Text('Working Time',
                                style: GoogleFonts.openSans(fontSize: 18.0)),
                            Text('Mon - Fri 9.00am - 8.00pm',
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 14.0)),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Text('January',
                                    style:
                                        GoogleFonts.openSans(fontSize: 18.0)),
                                SizedBox(width: 10.0),
                                FaIcon(FontAwesomeIcons.angleUp,
                                    size: 20.0, color: Colors.grey),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  6, (index) => docSchedule(index)),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45.0,
                                  width: 45.0,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 6.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFE0E0E0)),
                                  child: FaIcon(FontAwesomeIcons.heart,
                                      size: 20.0),
                                ),
                                SizedBox(
                                  height: 45.0,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: nextButton(
                                      onTap: () => goToNext(
                                          context: context,
                                          screen: ReviewDoctorScreen(
                                              /*  name: name,
                                            image: image,
                                            designation: designation,
                                            college: college,
                                            stars: stars,*/
                                              )),
                                      title: 'Book Appointment'),
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
      ),
    );
  }
}
