import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupViewController extends GetxController {
  final namecontroller = TextEditingController().obs;
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  final namefocusNode = FocusNode().obs;
  final emailfocusNode = FocusNode().obs;
  final passwordfocusNode = FocusNode().obs;
}
