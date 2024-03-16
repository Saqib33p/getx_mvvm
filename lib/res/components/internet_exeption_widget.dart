// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class InterNetExeptionWidget extends StatefulWidget {
  const InterNetExeptionWidget({super.key});

  @override
  State<InterNetExeptionWidget> createState() => _InterNetExeptionWidgetState();
}

class _InterNetExeptionWidgetState extends State<InterNetExeptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height / 3,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Icon(
                Icons.cloud_off,
                size: 50,
                color: AppColors.redcolor,
              ),
            ),
            Text(
              'internet_exception'.tr,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 15,
            ),
            OutlinedButton(onPressed: () {}, child: Text('retry'.tr))
          ],
        ),
      ),
    );
  }
}
