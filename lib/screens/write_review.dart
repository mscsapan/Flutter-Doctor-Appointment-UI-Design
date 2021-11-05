import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/schedule_button_controller.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WriteReviewScreen extends StatelessWidget {
  final double conSize = 100.0;
  final double conSize2 = 95.0;
  final String experience = 'How was the experience with';

  Widget recommends(int index, int position) => Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.checkCircle,
                color: position == index ? Colors.green : Colors.grey,
                size: 16.0),
            SizedBox(width: 8.0),
            Text(index == 0 ? 'Yes' : 'No')
          ],
        ),
      );

  Widget reviewStar(int index) {
    return Icon(Icons.star,
        color: index == 4 ? Colors.grey : mIconColor, size: 26.0);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: AppBar(
        backgroundColor: mDoctorTextColor,
        title: Text('Write Review', style: GoogleFonts.raleway()),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: conSize,
              width: conSize,
              margin:
                  EdgeInsets.symmetric(vertical: 20.0).copyWith(bottom: 5.0),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    docImages[1],
                    fit: BoxFit.fill,
                    height: conSize,
                    width: conSize,
                  ),
                ),
              ),
            ),
            Text(experience),
            Text(names[1]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) => reviewStar(index)),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: ListTile(
                  //contentPadding: EdgeInsets.all(0.0),
                  title: Text('Write Your Comment'),
                  trailing: Text('Max 600 Words'),
                )
                /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Write Your Comment'),
                  Text('Max 600 words'),
                ],
              ),*/
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: mWhiteColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: mWhiteColor)),
                ),
                maxLength: 600,
                maxLines: 5,
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Would You Recommends ${names[1]} \nto Your Friends?',
                  style: GoogleFonts.raleway(fontSize: 18.0),
                )),
            SizedBox(height: 10.0),
            Row(
              children: List.generate(
                2,
                (index) => Consumer<ScheduleButtonController>(
                  builder: (context, choice, child) => GestureDetector(
                      onTap: () => choice.chooseOption(index),
                      child: recommends(index, choice.option)),
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width - 0.2,
              child: nextButton(onTap: () {}, title: 'Review'),
            ),
            SizedBox(height: 70.0),
          ],
        ),
      ),
    );
  }
}
