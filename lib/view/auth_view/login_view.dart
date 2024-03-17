import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';
import 'package:getx_mvvm/res/components/text_form_field_widget.dart';
import 'package:getx_mvvm/view/auth_view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  TextFormFieldWidget(
                    fieldHeading: 'gmail'.tr,
                    fieldHintText: 'abc@gmail.com',
                  ),
                  TextFormFieldWidget(
                    fieldHeading: 'password'.tr,
                    fieldHintText: '*******',
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
                  RoundButtonWidget(
                    title: 'login'.tr,
                    onPress: () {
                      Get.to(() => HomeView());
                    },
                    width: 250,
                    textColor: AppColors.whitecolor,
                    buttonColor: AppColors.appPrimaryColor,
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
                          onTap: () {},
                          child: Text(
                            'ssignup'.tr,
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
    ));
  }
}
