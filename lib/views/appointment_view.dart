import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayAppointment extends StatelessWidget {
  final String image;
  final String name;
  final String connection;
  final String time;
  final String stars;
  const TodayAppointment(
      {Key? key,
      required this.image,
      required this.name,
      this.stars = '5',
      required this.connection,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: height * 0.16,
                width: 120.0,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(image,
                          fit: BoxFit.cover,
                          height: height * 0.16,
                          width: 120.0),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.andada(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(connection),
                  Text(
                    time,
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Row(
              children: [
                Icon(Icons.star, color: mIconColor, size: 20.0),
                Text(stars),
              ],
            ),
          )
        ],
      ),
    );
  }
}
