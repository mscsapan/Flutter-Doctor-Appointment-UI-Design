import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchDoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: doctorsAppBar('Search Doctors'),
      body: Container(
        height: height,
        width: width,
        color: mLightGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: mWhiteColor,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey, width: 1.2),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 0.6,
                        color: Colors.grey[400]!,
                        offset: Offset(0, 3))
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: 'Search Doctor',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FaIcon(FontAwesomeIcons.timesCircle,
                        color: Colors.grey, size: 20.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Suggestion',
              style: GoogleFonts.openSans(
                  fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.0),
            Column(
                children: List.generate(
              names.length,
              (index) => Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: SingleChildScrollView(
                  child: ExpansionTile(
                    title: Text(names[index]),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
