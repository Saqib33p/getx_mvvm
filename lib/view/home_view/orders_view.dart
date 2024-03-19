import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appSecondryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Orders',
          style: TextStyle(
              color: AppColors.whitecolor, fontWeight: FontWeight.w200),
        ),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            elevation: 5,
            child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/product_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Product Name'),
                subtitle: Text('Price: \$10'),
                trailing: Text(
                  'Pending...',
                  style: TextStyle(color: AppColors.redcolor),
                )),
          );
        },
      ),
    );
  }
}
