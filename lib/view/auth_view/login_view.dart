import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_model/controller/login/login_view_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formkey = GlobalKey<FormState>();
  final LoginViewController loginViewController =
      Get.put(LoginViewController());
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
        child: Form(
          key: _formkey,
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
                  'hello_signin'.tr,
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
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 30,
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
                                loginViewController.emailcontroller.value,
                            focusNode: loginViewController.emailfocusNode.value,
                            onFieldSubmitted: (value) {
                              Utils.fieldFocusChange(
                                  context,
                                  loginViewController.emailfocusNode.value,
                                  loginViewController.passwordfocusNode.value);
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
                                loginViewController.passwordcontroller.value,
                            focusNode:
                                loginViewController.passwordfocusNode.value,
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

                    Container(
                        margin: EdgeInsets.only(top: 8, right: 25),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'forgotpassword'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.appPrimaryColor),
                        )),
                    SizedBox(
                      height: height / 10,
                    ),
                    Obx(
                      () => RoundButtonWidget(
                        loading: loginViewController.loading.value,
                        title: 'login'.tr,
                        onPress: () {
                          if (_formkey.currentState!.validate()) {
                            loginViewController.loginApi();
                          }
                        },
                        width: 250,
                        textColor: AppColors.whitecolor,
                        buttonColor: AppColors.appPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: height / 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25, bottom: 25),
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'dont_have_an_account'.tr,
                            style: TextStyle(color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RoutesName.signupview);
                            },
                            child: Text(
                              'signup'.tr,
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
