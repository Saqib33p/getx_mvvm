import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_model/controller/signup_view_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignupViewController signupViewController = Get.put(SignupViewController());
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColors.appSecondryColor,
          AppColors.appPrimaryColor,
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'hello_signup'.tr,
                style: TextStyle(
                    color: AppColors.whitecolor,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height / 25,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: height / 1.4,
              width: height / 1,
              decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 30,
                    ),

                    // name text form field
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 25, left: 25, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'fullname'.tr,
                            style: TextStyle(color: AppColors.appSecondryColor),
                          ),
                          TextFormField(
                            controller:
                                signupViewController.namecontroller.value,
                            focusNode: signupViewController.namefocusNode.value,
                            onFieldSubmitted: (value) {
                              Utils.fieldFocusChange(
                                  context,
                                  signupViewController.namefocusNode.value,
                                  signupViewController.emailfocusNode.value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                Utils.snackBar('please_enter_name'.tr, context);
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'yourfullname'.tr,
                                contentPadding: EdgeInsets.all(1)),
                          ),
                        ],
                      ),
                    ),
                    //email text form field

                    Padding(
                      padding:
                          const EdgeInsets.only(right: 25, left: 25, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'gmail'.tr,
                            style: TextStyle(color: AppColors.appSecondryColor),
                          ),
                          TextFormField(
                            controller:
                                signupViewController.emailcontroller.value,
                            focusNode:
                                signupViewController.emailfocusNode.value,
                            onFieldSubmitted: (value) {
                              Utils.fieldFocusChange(
                                  context,
                                  signupViewController.emailfocusNode.value,
                                  signupViewController.passwordfocusNode.value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                Utils.snackBar(
                                    'please_enter_email'.tr, context);
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'abc@gmail.com',
                                contentPadding: EdgeInsets.all(1)),
                          ),
                        ],
                      ),
                    ),
                    // password  text form field
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 25, left: 25, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'password'.tr,
                            style: TextStyle(color: AppColors.appSecondryColor),
                          ),
                          TextFormField(
                            controller:
                                signupViewController.passwordcontroller.value,
                            focusNode:
                                signupViewController.passwordfocusNode.value,
                            validator: (value) {
                              if (value!.isEmpty) {
                                Utils.snackBar(
                                    'please_enter_password'.tr, context);
                              }
                            },
                            decoration: InputDecoration(
                                hintText: '*******',
                                contentPadding: EdgeInsets.all(1)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 17,
                    ),
                    RoundButtonWidget(
                      title: 'signup'.tr,
                      onPress: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                      width: 250,
                      textColor: AppColors.whitecolor,
                      buttonColor: AppColors.appPrimaryColor,
                    ),
                    SizedBox(
                      height: height / 12,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25, bottom: 25),
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'alredy_have_account'.tr,
                            style: TextStyle(color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RoutesName.loginView);
                            },
                            child: Text(
                              'login'.tr,
                              style: TextStyle(
                                  color: AppColors.appPrimaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
