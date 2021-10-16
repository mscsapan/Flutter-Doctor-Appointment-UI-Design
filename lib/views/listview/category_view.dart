import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../all_list_items.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: double.infinity,
      child: ListView.builder(
        itemCount: categoryImage.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (context, index) {
          return Container(
            height: 110.0,
            width: 100.0,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: mWhiteColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    categoryImage[index],
                    fit: BoxFit.cover,
                    height: 110,
                    width: 100,
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        categoryName[index],
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
