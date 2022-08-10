import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:food_ui1/controllers/product-provider.dart';
import 'package:food_ui1/models/product-model.dart';
import 'package:food_ui1/widgets/details_screen_widget/buttomRow-widget.dart';
import 'package:food_ui1/widgets/details_screen_widget/combo-widget.dart';
import 'package:food_ui1/widgets/details_screen_widget/image-view.dart';
import 'package:food_ui1/widgets/details_screen_widget/rating-widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var index = Get.arguments;
    List<ProductModel> productData =
     Get.find<ProductProvider>().listProduct;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var divider = Container(
      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      child: Divider(
        height: 1,
        color: const Color(0xFFb7b9b8).withOpacity(0.3),
        thickness: 1,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: height * 0.03, left: width * 0.05, right: width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageView(
                width: width,
                height: height,
                imageUrl: productData[index].imageUrl,
                index: index),
            RatingImage(
              name: productData[index].name,
              index: index,
              width: width,
              height: height,
            ),
            divider,
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Make it combo',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            Combo(
              width: width,
              height: height,
            ),
            divider,
            ButtomRow(width: width, height: height)
          ],
        ),
      )),
    );
  }
}
