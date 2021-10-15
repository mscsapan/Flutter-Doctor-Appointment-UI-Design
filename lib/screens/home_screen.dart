import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double imageCon = 60.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: mDoctorTextColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mDoctorTextColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(FontAwesomeIcons.bars),
            Column(
              children: [
                Text(
                  'Current Location',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.normal, fontSize: 16.0),
                ),
                Text(
                  'Dhaka',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600, fontSize: 17.0),
                ),
              ],
            ),
            FaIcon(FontAwesomeIcons.mapMarkerAlt)
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: mDoctorTextColor,
        child: Column(
          children: [
            Container(
              height: height * 0.12,
              width: double.infinity,
              //color: Colors.white,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
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
              child: Row(
                children: [
                  // Icon(Icons.search),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                      height: 48.0,
                      width: 48.0,
                      margin: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          color: mDoctorTextColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Icon(Icons.filter_list_rounded,
                          size: 30.0, color: mWhiteColor))
                ],
              ),
            ),
            Container(
              height: height * 0.56,
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFE6EFF9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Doctors',
                          style: GoogleFonts.openSans(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text('See all',
                            style: GoogleFonts.roboto(
                                color: mDoctorTextColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: height * 0.35,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: docImages.length,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 90.0,
                            width: double.infinity,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      //image container
                                      Container(
                                        height: imageCon,
                                        width: imageCon,
                                        margin: EdgeInsets.only(
                                            left: 10.0, right: 10),
                                        child: CircleAvatar(
                                          maxRadius: imageCon,
                                          child: ClipOval(
                                            child: Image.network(
                                              docImages[index],
                                              fit: BoxFit.cover,
                                              height: imageCon,
                                              width: imageCon,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            names[index],
                                            style: GoogleFonts.andada(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(designations[index]),
                                          Text(
                                            '\$ ${charges[index].toString()}',
                                            style: GoogleFonts.playfairDisplay(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  //doctor info column
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 20, color: Colors.yellow),
                                            SizedBox(width: 5.0),
                                            Text('${stars[index].toString()}'),
                                          ],
                                        ),
                                        SizedBox(height: 4.0),
                                        SizedBox(
                                          height: 30.0,
                                          width: 80.0,
                                          child: ElevatedButton(
                                            child: Text('Book'),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.search,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.addressBook,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.personBooth,
              ),
              label: 'Home'),
        ],
      ),
    );
  }
}
