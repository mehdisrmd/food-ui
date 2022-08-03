// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ui1/models/product-model.dart';
import 'package:food_ui1/providers/product-provider.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';
import 'package:food_ui1/screen/details_screen.dart';
import 'package:provider/provider.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({
    Key? key,
    required this.productData,
    required this.index,
  }) : super(key: key);
  final int index;
  final List<ProductModel> productData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: customThemeProvidr.currentTheme == ThemeMode.light
              ? Colors.white
              : const Color(0xFF16202a),
          borderRadius: BorderRadius.circular(15),
          boxShadow: customThemeProvidr.currentTheme == ThemeMode.light
              ? [
                  BoxShadow(
                      color: const Color(0xFFb7b9b8).withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: const Offset(0, 3))
                ]
              : null),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () => Provider.of<ProductProvider>(context, listen: false)
                  .addCounter(),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: customThemeProvidr.currentTheme == ThemeMode.light
                        ? const Color(0xFFfe6b03)
                        : Colors.black,
                    shape: BoxShape.circle),
                child: const Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: customThemeProvidr.currentTheme == ThemeMode.light
                      ? index == 0
                          ? Colors.pink.shade200.withOpacity(.4)
                          : const Color(0xFFb7b9b8).withOpacity(0.05)
                      : Colors.transparent,
                  shape: BoxShape.circle),
              child: Icon(
                index == 0
                    ? CupertinoIcons.suit_heart_fill
                    : CupertinoIcons.suit_heart,
                color: index == 0
                    ? Colors.pink
                    : const Color(0xFFb7b9b8).withOpacity(0.5),
                size: 14,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(DetailsScreen.routeName, arguments: index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Flexible(
                  flex: 3,
                  child: SizedBox(
                    width: 110,
                    height: 110,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        productData[index].imageUrl,
                        loadingBuilder: ((context, child, loadingProgress) {
                          if (loadingProgress == null) return child;

                          return Center(
                              child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                            color: Theme.of(context).primaryColor,
                          ));
                        }),
                        errorBuilder: ((context, error, stackTrace) {
                          return const Center(
                            child: Text('we have some problesm!'),
                          );
                        }),
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                    flex: 1,
                    child: Text(
                      productData[index].name,
                      style: Theme.of(context).textTheme.subtitle1,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    '\$${productData[index].price}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
