import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/getx_locilization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/view/auth_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashView(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
