import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/login_repository/login_repositort.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';

class LoginViewController extends GetxController {
  final _api = LoginRepository();

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
      Get.snackbar('Congratulation', 'Login Successfull');
      Get.toNamed(RoutesName.mainscreen);
      loading.value = false;
    }).onError((error, stackTrace) {
      Get.snackbar('Error', error.toString());
      loading.value = false;
    });
  }
}
