import 'package:get/get.dart';

class Controller extends GetxController {
  var increment_value = 0.obs;

  increment() {
    increment_value = increment_value + 1;
  }
}
