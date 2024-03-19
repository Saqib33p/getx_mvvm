import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/rounded_button_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appSecondryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Product Detail',
          style: TextStyle(
              color: AppColors.whitecolor, fontWeight: FontWeight.w200),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              child: PageView(
                children: [
                  Image.network(
                    'https://via.placeholder.com/600x300',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://via.placeholder.com/600x300',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://via.placeholder.com/600x300',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RoundButtonWidget(
                        title: 'Add to cart',
                        onPress: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // Add logic to handle rating updates
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Price: \$99.99',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Product Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget tellus nec velit condimentum laoreet.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
