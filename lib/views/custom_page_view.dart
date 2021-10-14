import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPageView extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const CustomPageView(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 230.0,
            child: SvgPicture.asset(image)),
        SizedBox(height: 35.0),
        Text(
          title,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
