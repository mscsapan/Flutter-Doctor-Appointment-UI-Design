import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/views/bottom_nav_bar.dart';
import 'package:doctor_appointment_design/views/listview/app_bar.dart';
import 'package:doctor_appointment_design/views/listview/category_view.dart';
import 'package:doctor_appointment_design/views/listview/heading_view.dart';
import 'package:doctor_appointment_design/views/listview/top_doctor_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: mDoctorTextColor,
      appBar: appBarView(),
      body: Container(
        height: height,
        width: width,
        color: mDoctorTextColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: height * 0.12,
                  width: double.infinity,
                  //color: Colors.white,
                  //margin: EdgeInsets.only(top: 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find Your Desire',
                          style: GoogleFonts.openSans(
                              fontSize: 25.0, fontWeight: FontWeight.w400),
                        ),
                        Text('Doctor Right Now!',
                            style: GoogleFonts.openSans(
                                color: Colors.grey,
                                fontSize: 26.0,
                                fontWeight: FontWeight.w500))
                      ])),
              Container(
                  height: height * .07,
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: mWhiteColor,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(children: [
                    // Icon(Icons.search),
                    Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search)))),
                    Container(
                        height: 48.0,
                        width: 48.0,
                        margin: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color: mDoctorTextColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(Icons.filter_list_rounded,
                            size: 30.0, color: mWhiteColor))
                  ])),
              Container(
                height: height * 0.65,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: mLightGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: HeadingView(heading: 'Category')),
                    //category container
                    CategoryView(),
                    Spacer(),
                    HeadingView(heading: 'Top Doctors'),
                    TopDoctorView(height: height * 0.4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}
