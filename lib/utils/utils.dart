import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class Utils {
//rating
  static double averageRating(List<int> rating) {
    var avgRating = 0;
    for (int i = 0; i < rating.length; i++) {
      avgRating = avgRating + rating[i];
    }
    return double.parse((avgRating / rating.length).toStringAsFixed(1));
  }

//field focuschange
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

//flashbar error message
  static void flashBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          message: message,
          backgroundColor: AppColors.redcolor,
          reverseAnimationCurve: Curves.easeInOut,
          messageColor: AppColors.blackcolor,
          duration: Duration(seconds: 3),
          positionOffset: 20,
          icon: Icon(Icons.error, size: 28, color: AppColors.whitecolor),
          flushbarPosition: FlushbarPosition.TOP,
        )..show(context));
  }

  //snackbar message

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3), // Adjust the duration as needed
      behavior: SnackBarBehavior.floating,
    ));
  }
}
