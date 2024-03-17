import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String fieldHeading;
  final String fieldHintText;
  final Color headingColor;
  const TextFormFieldWidget(
      {super.key,
      required this.fieldHeading,
      required this.fieldHintText,
      this.headingColor = AppColors.appSecondryColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fieldHeading,
            style: TextStyle(color: headingColor),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: fieldHintText, contentPadding: EdgeInsets.all(1)),
          ),
        ],
      ),
    );
  }
}
