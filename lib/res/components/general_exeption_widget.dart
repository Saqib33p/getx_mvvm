// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
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
                Icons.warning,
                size: 50,
                color: AppColors.redcolor,
              ),
            ),
            Text(
              'general_exception'.tr,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 15,
            ),
            OutlinedButton(onPressed: widget.onPress, child: Text('retry'.tr))
          ],
        ),
      ),
    );
  }
}
