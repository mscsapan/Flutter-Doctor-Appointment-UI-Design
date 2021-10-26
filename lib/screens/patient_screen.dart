import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/screens/payment_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/notifications_bell.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PatientScreen extends StatelessWidget {
  final List<String> ages = ['10+', '20+', '30+', '40+', '50+'];
  final List<String> gender = ['Male', 'Female', 'Others'];

  Widget buildAgesRange(int index, int position, Function() onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60.0,
          width: 60.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: position == index ? mDoctorTextColor : mWhiteColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(ages[index],
              style: GoogleFonts.roboto(
                  fontSize: 20.0,
                  color: position == index ? mWhiteColor : Colors.grey,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500)),
        ),
      );
  Widget inputField(String input) => TextField(
        enabled: true,
        decoration: InputDecoration(
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: input,
        ),
      );
  Widget iconAndName(String name, IconData icon) => Row(
        children: [
          FaIcon(icon, size: 20.0, color: Colors.grey),
          SizedBox(width: 5.0),
          Text(name, style: GoogleFonts.openSans(fontSize: 20.0)),
        ],
      );
  Widget iconAndName2(int index) => Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.solidCheckCircle,
                size: 14.0, color: index == 0 ? mDoctorTextColor : Colors.grey),
            SizedBox(width: 5.0),
            Text(gender[index], style: GoogleFonts.openSans(fontSize: 14.0)),
          ],
        ),
      );
  final String problem = 'Write Your Problem Here';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 0.0),
            Text('Patient Details'),
            NotificationBell(),
          ],
        ),
        centerTitle: true,
        backgroundColor: mDoctorTextColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              iconAndName('Name', FontAwesomeIcons.user),
              inputField('Mohammad Sapan'),
              SizedBox(height: 10),
              iconAndName('Select Your age or Type', FontAwesomeIcons.table),
              SizedBox(height: 10.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    ages.length,
                    (index) => Consumer<ScheduleButtonController>(
                      builder: (context, controller, child) => buildAgesRange(
                        index,
                        controller.current4,
                        () => controller.setActivity4(index),
                      ),
                    ),
                  ),
                ),
              ),
              inputField('+88 01624-188877'),
              SizedBox(height: 10.0),
              iconAndName('Gender', FontAwesomeIcons.venusDouble),
              Row(
                children: List.generate(3, (index) => iconAndName2(index)),
              ),
              SizedBox(height: 15.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child:
                      Text(problem, style: GoogleFonts.roboto(fontSize: 18.0)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                maxLines: 6,
              ),
              SizedBox(height: 50.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width - 25.0,
                  child: nextButton(
                      onTap: () =>
                          goToNext(context: context, screen: PaymentScreen()),
                      title: 'Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
