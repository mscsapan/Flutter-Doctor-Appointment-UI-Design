import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/screens/doctor_details_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDoctorsScreen extends StatelessWidget {
  final double conSize = 70.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: doctorsAppBar('Top Doctors'),
      body: Container(
        height: height,
        width: width,
        color: mLightGrey,
        padding: EdgeInsets.only(top: 10.0),
        child: GridView.builder(
          itemCount: docImages.length,
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.88,
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => goToNext(
                  context: context,
                  screen: DoctorDetailsScreen(
                    name: names[index],
                    image: docImages[index],
                    designation: designations[index],
                    college: colleges[index],
                  )),
              child: Container(
                height: 300.0,
                width: 200.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: [
                      //image container
                      Container(
                        height: conSize,
                        width: conSize,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            minRadius: conSize,
                            child: ClipOval(
                              child: Image.network(docImages[index],
                                  fit: BoxFit.cover,
                                  height: conSize,
                                  width: conSize),
                            ),
                          ),
                        ),
                      ),
                      Text(names[index],
                          style: GoogleFonts.andada(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                      Text(designations[index]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$ ${charges[index].toString()}',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 16.0, fontWeight: FontWeight.w800)),
                          SizedBox(width: 10.0),
                          Icon(Icons.star, color: Colors.yellow, size: 22.0),
                          Text(stars[index].toString()),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      SizedBox(
                        height: 30.0,
                        width: 80.0,
                        child: ElevatedButton(
                          child: Text('Book'),
                          onPressed: () => print(names[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
