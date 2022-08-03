// ignore_for_file: file_names, camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui1/providers/product-provider.dart';
import 'package:food_ui1/widgets/home_screen_widget/gridBuilder-widget.dart';
import 'package:provider/provider.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    var productData =
        Provider.of<ProductProvider>(context, listen: false).listProduct;
    return Expanded(
      child: GridView.builder(
          itemCount: productData.length,
          padding: EdgeInsets.only(
              top: height * 0.04,
              left: width * 0.05,
              right: width * 0.05,
              bottom: height * 0.04),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
          ),
          itemBuilder: ((context, index) => GridBuilder(
                productData: productData,
                index: index,
              ))),
    );
  }
}
