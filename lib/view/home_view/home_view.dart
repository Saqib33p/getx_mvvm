// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_mvvm/res/components/banners_widget.dart';
import 'package:getx_mvvm/res/components/categories_list_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<String> imageList = [
    'https://www.oberlo.com/media/1603957118-winning-products.jpg',
    'https://media.glamour.com/photos/639d05c7d0d74927483ca574/16:9/w_3487,h_1961,c_limit/12-16-editors-picks.jpg',
    'https://voicebot.ai/wp-content/uploads/2019/09/amazon-alexa-event-sept-2019.jpg',
    'https://images.wsj.net/im-768074?width=1280&size=1.33333333',
    'https://webusupload.apowersoft.info/apowercom/wp-content/uploads/2021/02/white-background-clothes.jpg',
    'https://i.pinimg.com/236x/16/aa/a7/16aaa707f8fedd1beadd12fa08b5f459.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: height / 40,
          ),
          BannersWidget(),
          SizedBox(
            height: height / 600,
          ),
          CategoriesListWidget(),
          SizedBox(
            height: height / 200,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: height / 3,
                    child: Image.network(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
