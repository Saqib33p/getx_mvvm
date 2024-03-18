import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class CategoriesListWidget extends StatelessWidget {
  CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 90,
              decoration: BoxDecoration(
                  color: AppColors.appPrimaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Clothes',
                  style: TextStyle(
                      color: AppColors.whitecolor, fontWeight: FontWeight.w500),
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
