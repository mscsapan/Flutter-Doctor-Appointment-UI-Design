import 'package:doctor_appointment_design/controller/swipe_controller.dart';
import 'package:doctor_appointment_design/screens/sign_in_screen.dart';
import 'package:doctor_appointment_design/views/custom_page_view.dart';
import 'package:doctor_appointment_design/views/customs_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../views/all_list_items.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            Container(
              height: 360.0,
              width: double.infinity,
              child: Consumer<SwipePageController>(
                builder: (context, controller, child) => PageView(
                  controller: pageController,
                  onPageChanged: (int index) => controller.swipePage(index),
                  children: List.generate(
                    images.length,
                    (index) => CustomPageView(
                        title: titles[index],
                        description: descriptions[index],
                        image: images[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  images.length,
                  (index) => Consumer<SwipePageController>(
                      builder: (context, controller, child) => buildDot(
                          index: controller.position, current: index))),
            ),
            SizedBox(height: 60.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: nextButton(
                  onTap: () => pageController.jumpToPage(3), title: 'Next'),
            ),
            InkWell(
                onTap: () => goToNext(context: context, screen: SignInScreen()),
                child: Consumer<SwipePageController>(
                    builder: (context, control, child) =>
                        Text(control.position == 3 ? 'Done' : 'Skip for Now')))
          ],
        ),
      ),
    );
  }
}
