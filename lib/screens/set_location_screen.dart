import 'package:doctor_appointment_design/views/listview/doctors_app_bar.dart';
import 'package:flutter/material.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: doctorsAppBar('Set Location'),
    );
  }
}
