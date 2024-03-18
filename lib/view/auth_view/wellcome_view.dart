import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/assets/name_assets.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';
import 'package:getx_mvvm/view/auth_view/login_view.dart';

class WellcomeView extends StatelessWidget {
  const WellcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColors.appSecondryColor,
        AppColors.appPrimaryColor,
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Image.asset(
                ImageAssets.splashscreen,
                color: AppColors.whitecolor,
                height: height / 8,
              ),
              Text(
                NameAsset.appName,
                style: TextStyle(fontSize: 40, color: AppColors.whitecolor),
              ),
              SizedBox(
                height: height / 10,
              ),
              Text(
                'welcome_back'.tr,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: AppColors.whitecolor),
              ),
              SizedBox(
                height: height / 20,
              ),
              RoundButtonWidget(
                title: 'login'.tr,
                onPress: () {
                  Get.to(() => LoginView());
                },
                width: 250,
              ),
              SizedBox(
                height: height / 30,
              ),
              RoundButtonWidget(
                title: 'signup'.tr,
                onPress: () {},
                width: 250,
              ),
            ],
          )),
        ],
      ),
    ));
  }
}
