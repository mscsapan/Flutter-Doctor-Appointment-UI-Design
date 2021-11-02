import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/controller/review_controller.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class WriteReviewScreen extends StatelessWidget {
  final double conSize = 100.0;
  final double conSize2 = 95.0;
  final String experience = 'How was the experience with';

  Widget recommends() => Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.checkCircle,
                color: Colors.green, size: 16.0),
            SizedBox(width: 4.0),
            Text('Yes')
          ],
        ),
      );

  final ReviewController review = Get.put(ReviewController());
  Widget reviewStar(int index) {
    return GestureDetector(
      onTap: () => review.review(),
      child: Icon(Icons.star,
          color: review.isPressed.value == index ? Colors.grey : mIconColor,
          size: 26.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: AppBar(
        backgroundColor: mDoctorTextColor,
        title: Text('Write Review'),
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
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: ListTile(
                title: Text('Write Your Comment'),
                trailing: Text('Max 600 Words'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0)
                  .copyWith(top: 0.0),
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: mCheckIconColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: mCheckIconColor)),
                ),
                maxLength: 600,
                maxLines: 5,
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Would You Recommends ${names[1]} \nto Your Friends?')),
            Row(children: List.generate(2, (index) => recommends())),
            Spacer(),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width - 0.2,
              child: nextButton(onTap: () {}, title: 'Review'),
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
