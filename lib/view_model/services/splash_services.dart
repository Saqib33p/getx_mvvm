import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';

class SplashServices {
  void islogin() {
    Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.loginView));
  }
}
