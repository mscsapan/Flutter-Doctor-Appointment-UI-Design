import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDoctorView extends StatelessWidget {
  final double height;

  const TopDoctorView({Key? key, required this.height}) : super(key: key);
  final double imageCon = 60.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: docImages.length,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (context, index) {
          return Container(
            height: 90.0,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //image container
                      Container(
                        height: imageCon,
                        width: imageCon,
                        margin: EdgeInsets.only(left: 10.0, right: 10),
                        child: CircleAvatar(
                          maxRadius: imageCon,
                          child: ClipOval(
                            child: Image.network(
                              docImages[index],
                              fit: BoxFit.cover,
                              height: imageCon,
                              width: imageCon,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            names[index],
                            style: GoogleFonts.andada(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Text(designations[index]),
                          Text(
                            '\$ ${charges[index].toString()}',
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 16.0, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //doctor info column
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            SizedBox(width: 5.0),
                            Text('${stars[index].toString()}'),
                          ],
                        ),
                        SizedBox(height: 4.0),
                        SizedBox(
                          height: 30.0,
                          width: 80.0,
                          child: ElevatedButton(
                            child: Text('Book'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
