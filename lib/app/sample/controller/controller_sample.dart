import 'package:get/get.dart';

class SampleController extends GetxController {
  static SampleController instance = Get.find();

  var count = 0.obs;

  incrementCount() {
    count.value += 1;
  }

  decrementCount() {
    count.value -= 1;
  }

  resetCount() {
    count.value = 0;
  }
}
