import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    Key? key,
    this.buttonColor = AppColors.appPrimaryColor,
    this.textColor = AppColors.whitecolor,
    this.borderColor = AppColors.whitecolor,
    required this.title,
    required this.onPress,
    this.width = 120,
    this.height = 50,
    this.loading = false,
  }) : super(key: key);

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor, borderColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.appSecondryColor,
              AppColors.appPrimaryColor,
            ]),
            border: Border.all(width: 1, color: borderColor),
            color: buttonColor,
            borderRadius: BorderRadius.circular(50)),
        child: loading
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor),
                ),
              ),
      ),
    );
  }
}
