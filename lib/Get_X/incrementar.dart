import 'package:get/get.dart';

class Increment extends GetxController {
  var count = 0.obs;
  increment() {
    count++;
  }
}
