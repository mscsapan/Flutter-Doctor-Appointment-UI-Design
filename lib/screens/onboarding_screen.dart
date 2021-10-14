import 'package:doctor_appointment_design/controller/swipe_controller.dart';
import 'package:doctor_appointment_design/screens/sign_in_screen.dart';
import 'package:doctor_appointment_design/views/custom_page_view.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../all_list_items.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SwipePageController swipe =
        Provider.of<SwipePageController>(context, listen: true);
    int currentIndex = 0; //swipe.position;
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            Container(
              height: 360.0,
              width: double.infinity,
              child: PageView(
                onPageChanged: (int index) {
                  currentIndex = index;
                },
                children: List.generate(
                  images.length,
                  (index) => CustomPageView(
                    title: titles[index],
                    description: descriptions[index],
                    image: images[index],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3, (index) => buildDot(index: currentIndex, current: index)),
            ),
            SizedBox(height: 60.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: nextButton(onTap: () => swipe.swipePage(), title: 'Next'),
            ),
            InkWell(
                onTap: () => goToNext(context: context, screen: SignInScreen()),
                child: Text('Skip for Now'))
          ],
        ),
      ),
    );
  }
}
