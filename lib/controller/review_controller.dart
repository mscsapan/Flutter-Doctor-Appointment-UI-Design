import 'package:get/get.dart';

class ReviewController extends GetxController {
  var isPressed = true.obs;
  int position = 0;

  void review() {
    isPressed.value = !isPressed.value;
    update();
  }
}
