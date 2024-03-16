import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/route_names.dart';
import 'package:getx_mvvm/view/forgot_password_view.dart';
import 'package:getx_mvvm/view/home_view.dart';
import 'package:getx_mvvm/view/login_view.dart';
import 'package:getx_mvvm/view/signup_view.dart';
import 'package:getx_mvvm/view/splash_view.dart';
import 'package:getx_mvvm/view/wellcome_view.dart';

class AppRoutes {
  static appRoutes() => [
        //splash screen page
        GetPage(
            name: RoutesName.splashView,
            page: () => SplashView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        //wellcome screen page
        GetPage(
            name: RoutesName.wellcomeview,
            page: () => WellcomeView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),

        //login screen page
        GetPage(
            name: RoutesName.loginView,
            page: () => LoginView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
//signup screen page
        GetPage(
            name: RoutesName.signupview,
            page: () => SignUpView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        //forgot password page
        GetPage(
            name: RoutesName.forgotpasswordview,
            page: () => ForgotPasswordScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),

        //home screen page
        GetPage(
            name: RoutesName.homeview,
            page: () => HomeView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade)
      ];
}
