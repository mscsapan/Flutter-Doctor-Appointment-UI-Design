import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/screens/forgot_password_screen.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (val) {}),
              Text('Remember me', style: TextStyle(color: mDoctorTextColor)),
            ],
          ),
          InkWell(
              onTap: () => goToNext(context: context, screen: ForgotPassword()),
              child: Text('Forgot Password?',
                  style: TextStyle(color: mDoctorTextColor)))
        ],
      ),
    );
  }
}
