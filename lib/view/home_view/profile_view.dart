import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/view_model/controller/user_prefrences/user_prefrences_view_model.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  UserPrefreces userPrefreces = UserPrefreces();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appSecondryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
              color: AppColors.whitecolor, fontWeight: FontWeight.w200),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height / 15,
              width: Get.width / 1,
              decoration: BoxDecoration(
                  color: AppColors.appPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change Theme',
                      style: TextStyle(
                          color: AppColors.whitecolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 70,
            ),
            Container(
              height: Get.height / 15,
              width: Get.width / 1,
              decoration: BoxDecoration(
                  color: AppColors.appPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change Language',
                      style: TextStyle(
                          color: AppColors.whitecolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
