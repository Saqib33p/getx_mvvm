import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/view_model/controller/cart/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final MyCartController myCartController = Get.put(MyCartController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myCartController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: Obx(() {
        switch (myCartController.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.appPrimaryColor,
              ),
            );
          case Status.ERROR:
            return Center(child: Text('Something went wrong'));
          case Status.COMPLETED:
            final data = myCartController.userList.value;
            return ListView.builder(
              itemCount: myCartController.userList.value.image!.length,
              itemBuilder: (context, index) {
                return Text('hy');
              },
            );

          default:
        }
        return SizedBox.shrink();
      }),
    );
  }
}
