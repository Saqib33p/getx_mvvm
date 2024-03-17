import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';
import 'package:getx_mvvm/res/components/text_form_field_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
              child: Column(
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  TextFormFieldWidget(
                    fieldHeading: 'fullname'.tr,
                    fieldHintText: 'yourfullname'.tr,
                  ),
                  TextFormFieldWidget(
                    fieldHeading: 'gmail'.tr,
                    fieldHintText: 'abc@gmail.com',
                  ),
                  TextFormFieldWidget(
                    fieldHeading: 'password'.tr,
                    fieldHintText: '*******',
                  ),
                  SizedBox(
                    height: height / 17,
                  ),
                  RoundButtonWidget(
                    title: 'signup'.tr,
                    onPress: () {
                      // Get.to(() => SignUpView());
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
                          onTap: () {},
                          child: Text(
                            'loginn'.tr,
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
