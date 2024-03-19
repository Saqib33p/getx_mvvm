import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_response_model.dart';
import 'package:getx_mvvm/repository/login_repository/login_repositort.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';
import 'package:getx_mvvm/view_model/controller/user_prefrences/user_prefrences_view_model.dart';

class LoginViewController extends GetxController {
  final _api = LoginRepository();

  UserPrefreces userPrefreces = UserPrefreces();

  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  final emailfocusNode = FocusNode().obs;
  final passwordfocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailcontroller.value.text,
      'password': passwordcontroller.value.text
    };
    _api.loginApi(data).then((value) {
      UserResponseModel userResponseModel =
          UserResponseModel(token: value['token'], isLogin: true);
      userPrefreces.saveUser(userResponseModel).then((value) {
        Get.toNamed(RoutesName.mainscreen);
        Get.snackbar('Congratulation', 'Login Successfull');
      });

      loading.value = false;
    }).onError((error, stackTrace) {
      Get.snackbar('Error', error.toString());
      loading.value = false;
    });
  }
}
