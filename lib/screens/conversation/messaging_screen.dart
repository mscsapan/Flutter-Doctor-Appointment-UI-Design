import 'package:doctor_appointment_design/app_colors/app_colors.dart';
import 'package:doctor_appointment_design/model/conversation_model.dart';
import 'package:doctor_appointment_design/model/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagingScreen extends StatelessWidget {
  final double picSize = 50.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mLightGrey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mLightGrey.withOpacity(0.6),
        title: Text(names[5],
            style: GoogleFonts.raleway(
                color: Colors.black38, fontWeight: FontWeight.bold)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                height: height * 0.7,
                //color: Colors.blue,
                child: ListView.builder(
                    itemCount: conversationList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final ConversationModel model = conversationList[index];
                      return Row(
                        mainAxisAlignment: model.patient == true
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          model.patient == false
                              ? Container(
                                  height: picSize,
                                  width: picSize,
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: CircleAvatar(
                                    minRadius: picSize,
                                    child: ClipOval(
                                      child: Image.network(docImages[1],
                                          fit: BoxFit.fill,
                                          height: picSize,
                                          width: picSize),
                                    ),
                                  ),
                                )
                              : Container(),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.symmetric(
                                vertical: 6.0, horizontal: 8),
                            decoration: BoxDecoration(
                                color: model.patient
                                    ? mDoctorTextColor
                                    : mWhiteColor,
                                borderRadius: model.patient == true
                                    ? BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(0.0),
                                      )
                                    : BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(10.0),
                                      )),
                            child: Text(
                              model.message,
                              style: TextStyle(
                                  color: model.patient
                                      ? mWhiteColor
                                      : Colors.black,
                                  letterSpacing: 0.6),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    color: mDoctorTextColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Icon(
                            Icons.attach_file,
                            color: mWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: mWhiteColor,
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12.0)),
                            filled: true,
                            hintText: 'write message',
                            suffixIcon:
                                Icon(Icons.send, color: mDoctorTextColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
