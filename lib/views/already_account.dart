import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AlreadyAccount extends StatelessWidget {
  final String message;
  final String method;
  final Function() onTap;
  AlreadyAccount(
      {Key? key,
      required this.message,
      required this.method,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 40.0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 17.0, color: mWhiteColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                method,
                style: TextStyle(
                  fontSize: 17.0,
                  color: mWhiteColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
