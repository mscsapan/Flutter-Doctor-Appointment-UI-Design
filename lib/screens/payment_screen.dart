import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/review_doctor_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:doctor_appointment_design/views/notifications_bell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  TextStyle bankName() => GoogleFonts.roboto(
      letterSpacing: 1.0, fontSize: 14.0, color: mWhiteColor);
  final String condition = 'By adding credit/debit card you\'re accept';
  final String condition2 = 'Terms & Conditions';
  Widget inputField(String input) => TextField(
        enabled: false,
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.all(6.0).copyWith(bottom: 10.0),
          //isDense: true,
          //isCollapsed: true,
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
            Text('Payment'),
            NotificationBell(),
          ],
        ),
        centerTitle: true,
        backgroundColor: mDoctorTextColor,
        elevation: 0.0,
      ),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
        child: Column(
          children: [
            Container(
              height: height * 0.25,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              decoration: BoxDecoration(
                color: mDoctorTextColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                              Positioned(
                                left: 8.0,
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: mIconColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 15.0),
                          Text('Credit Card',
                              style: GoogleFonts.openSans(
                                  letterSpacing: 1.3,
                                  fontSize: 18.0,
                                  color: mWhiteColor)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Dutch Bangla Bank',
                            style: bankName(),
                          ),
                          Text('Limited',
                              style: bankName().copyWith(fontSize: 12.0)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 40.0,
                    width: 50.0,
                    child: SvgPicture.asset('assets/chip.svg',
                        height: 40.0, width: 50.0, fit: BoxFit.fill),
                  ),
                  SizedBox(height: 8.0),
                  Text('1231 4321 5463 7877',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                          fontSize: 15.0,
                          color: mWhiteColor)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name',
                              style: bankName().copyWith(fontSize: 13.0)),
                          SizedBox(height: 5.0),
                          Text('Mohammad Sapan',
                              style: bankName().copyWith(fontSize: 16.5)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Expire',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500,
                                  color: mWhiteColor)),
                          SizedBox(height: 3.0),
                          Text(
                            '28/25',
                            style: GoogleFonts.raleway(
                                fontSize: 14.0,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600,
                                color: mWhiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Text(condition, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 2.0),
            Text(condition2,
                style: TextStyle(
                    color: mDoctorTextColor,
                    decoration: TextDecoration.underline)),
            iconAndName('Name', FontAwesomeIcons.user),
            inputField('Card holder full name'),
            SizedBox(height: 10.0),
            iconAndName('Card Number', FontAwesomeIcons.creditCard),
            inputField('Card number'),
            SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        iconAndName('Expire Date', FontAwesomeIcons.table),
                        Expanded(
                          child: inputField('DD-MM-YYYY'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      children: [
                        iconAndName('CVV', FontAwesomeIcons.creditCard),
                        Expanded(
                          child: inputField('Enter CVV number'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
                width: double.infinity,
                height: 50.0,
                child: nextButton(
                    onTap: () => goToNext(
                        context: context, screen: ReviewDoctorScreen()),
                    title: 'Payment Now'))
          ],
        ),
      ),
    );
  }
}
