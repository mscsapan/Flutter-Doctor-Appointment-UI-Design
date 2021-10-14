import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

doctorTextStyle() => TextStyle(
    color: mDoctorTextColor,
    fontSize: 37.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.5);

//dot Container

Widget buildDot({required int index, required int current}) {
  return Container(
    height: index == current ? 12 : 10.0,
    width: index == current ? 12 : 10.0,
    margin: EdgeInsets.only(right: 5.0),
    decoration: BoxDecoration(
        color: index == current ? mDoctorTextColor : Colors.grey,
        shape: BoxShape.circle),
  );
}

Widget nextButton({required Function() onTap, required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: mDoctorTextColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    onPressed: onTap,
    child: Text(title),
  );
}

Widget skipButton() {
  return TextButton(
    onPressed: () {},
    child: Text('Skip for Now'),
  );
}

goToNext({required BuildContext context, required Widget screen}) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));

//appBar
appBar() {
  AppBar(
    elevation: 0.0,
    backgroundColor: Color(0xFF0099ff),
  );
}
