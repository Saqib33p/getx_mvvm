import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var slectedindex = 0.obs;

  void changeIndex(int index) {
    slectedindex.value = index;
  }
}
