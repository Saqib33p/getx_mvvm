// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/banners_widget.dart';
import 'package:getx_mvvm/res/components/categories_list_widget.dart';
import 'package:getx_mvvm/view/home_view/product_detail_screen.dart';
import 'package:image_card/image_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  //product list images lists
  final List<String> imageList = [
    'https://www.oberlo.com/media/1603957118-winning-products.jpg',
    'https://media.glamour.com/photos/639d05c7d0d74927483ca574/16:9/w_3487,h_1961,c_limit/12-16-editors-picks.jpg',
    'https://voicebot.ai/wp-content/uploads/2019/09/amazon-alexa-event-sept-2019.jpg',
    'https://images.wsj.net/im-768074?width=1280&size=1.33333333',
    'https://webusupload.apowersoft.info/apowercom/wp-content/uploads/2021/02/white-background-clothes.jpg',
    'https://i.pinimg.com/236x/16/aa/a7/16aaa707f8fedd1beadd12fa08b5f459.jpg',
  ];

//product names list
  final List<String> productNameList = [
    'Makeup kit full kit',
    'Eye lashes with liner',
    'Audionic speakers with tab',
    'Energy drink with chips',
    'Winter premium jacket',
    'Coat for mens'
  ];
  //categories name list
  final List<String> categoriesNameList = [
    'Makeup Makeup Makeup Makeup Makeup Makeup',
    'Makeup',
    'Tech',
    'Food',
    'Cloathes',
    'Cloathes'
  ];
  //product prices
  final List<dynamic> productratingList = [5000, 307, 309, 188, 206, 498];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(
              height: height / 40,
            ),
            BannersWidget(),
            SizedBox(
              height: height / 600,
            ),
            Card(
              color: AppColors.appSecondryColor,
              elevation: 0,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: AppColors.whitecolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox.shrink()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CategoriesListWidget(),
            ),
            SizedBox(
              height: height / 200,
            ),
            Card(
              color: AppColors.appSecondryColor,
              elevation: 0,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Products',
                      style: TextStyle(
                          color: AppColors.whitecolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox.shrink()
                  ],
                ),
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => ProductDetail());
                    },
                    child: FillImageCard(
                      width: 200,
                      heightImage: 105,
                      imageProvider: NetworkImage(imageList[index]),
                      tags: [
                        Text(
                          productNameList[index],
                          style: TextStyle(fontWeight: FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                      footer: Expanded(
                        child: Text(
                          'RS:' + productratingList[index].toString(),
                          style: TextStyle(fontWeight: FontWeight.w900),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
