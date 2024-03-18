// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_model/controller/botom_navigation_controller.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/view/home_view/cart_view.dart';
import 'package:getx_mvvm/view/home_view/home_view.dart';
import 'package:getx_mvvm/view/home_view/orders_view.dart';
import 'package:getx_mvvm/view/home_view/profile_view.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

class BottomNavigationBarView extends StatelessWidget {
  BottomNavigationBarView({super.key});

  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final screens = [HomeView(), OrdersView(), ProfileView(), CartView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.slectedindex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "home".tr,
        labels: ["home".tr, "orders".tr, "cart".tr, "profile".tr],
        tabIconColor: AppColors.whitecolor,
        tabBarColor: AppColors.appSecondryColor,
        tabSelectedColor: AppColors.appPrimaryColor,
        textStyle: TextStyle(color: AppColors.whitecolor),
        onTabItemSelected: (index) {
          bottomNavigationController.changeIndex(index);
        },
        icons: [
          Icons.home,
          Icons.card_giftcard,
          Icons.shopping_cart,
          Icons.person
        ],
      ),
    );
  }
}
