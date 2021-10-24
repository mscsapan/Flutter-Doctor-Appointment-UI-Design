import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAppointmentScreen extends StatelessWidget {
  final List<String> type = ['Voice Call', 'Video Call', 'Messaging'];
  final List<String> price = ['8', '10', '5'];
  final List<String> subType = [
    'can make voice call with Doctors',
    'can make video call with Doctors',
    'can make chat with Doctors'
  ];
  final List<IconData> icon = [
    FontAwesomeIcons.phoneAlt,
    FontAwesomeIcons.video,
    FontAwesomeIcons.commentDots,
  ];
  Widget scheduleButton(
      {BuildContext? context, int? index, int? position, Function()? onTap}) {
    return Consumer<ScheduleButtonController>(
      builder: (context, btn, child) => Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(6.0),
                  primary: position == index ? Colors.blue : Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0))),
              onPressed: onTap,
              icon: FaIcon(
                  index == 0
                      ? FontAwesomeIcons.sun
                      : FontAwesomeIcons.cloudMoon,
                  size: 20.0),
              label: Text(index == 0 ? 'Morning' : 'Evening')),
        ),
      ),
    );
  }

  Widget timeSchedule(
      {BuildContext? context, Function()? onTap, int? index, int? position}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 120.0,
          alignment: Alignment.center,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: position == index ? Colors.green : Colors.grey[200]),
          child: Text(
            position == index ? 'Booked' : '9.00 - 10.00',
            style: GoogleFonts.playfairDisplay(fontSize: 16.0),
          ),
        ),
      ),
    );
  }

  Widget connectMethod(
          {Function()? onTap, required int index, int? position}) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60.0,
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: position == index ? mDoctorTextColor : Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Container(
                        height: 45.0,
                        width: 45.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey,
                        ),
                        child: FaIcon(icon[index],
                            color: position == index
                                ? mWhiteColor
                                : mDoctorTextColor))),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(type[index],
                          style: GoogleFonts.play(
                            fontSize: 18,
                            color:
                                position == index ? mWhiteColor : Colors.grey,
                          )),
                      Text(
                        subType[index],
                        style: GoogleFonts.play(
                          fontSize: 14,
                          color: position == index ? mWhiteColor : Colors.grey,
                        ),
                      ),
                    ])
              ]),
              Text(
                '\$${price[index]}',
                style: GoogleFonts.playfairDisplay(
                    color: position == index ? mWhiteColor : Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      );

  headingStyle() =>
      GoogleFonts.openSans(fontWeight: FontWeight.w500, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: doctorsAppBar('My Appointment'),
      body: Container(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text('09 January, Saturday', style: headingStyle()),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => Consumer<ScheduleButtonController>(
                  builder: (context, btn, child) => scheduleButton(
                      onTap: () => btn.setActivity(index),
                      index: index,
                      position: btn.current),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Wrap(
              children: List.generate(
                5,
                (index) => Consumer<ScheduleButtonController>(
                  builder: (context, controller, child) => timeSchedule(
                      onTap: () => controller.setActivity2(index),
                      index: index,
                      position: controller.current2),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text('Fees Information', style: headingStyle()),
            ),
            Column(
              children: List.generate(
                  3,
                  (index) => Consumer<ScheduleButtonController>(
                      builder: (context, control, _) => connectMethod(
                          index: index,
                          position: control.current3,
                          onTap: () => control.setActivity3(index)))),
            ),
            SizedBox(height: 40.0),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width - 25.0,
                child: nextButton(onTap: () {}, title: 'Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
