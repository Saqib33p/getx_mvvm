import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';
import 'package:getx_mvvm/view_model/controller/user_prefrences/user_prefrences_view_model.dart';

class SplashServices {
  UserPrefreces userPrefreces = UserPrefreces();

  void islogin() {
    userPrefreces.getUser().then((value) {
      print(value.token);
      print(value.isLogin);

      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.wellcomeview));
      } else {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.mainscreen));
      }
    });
  }
}
