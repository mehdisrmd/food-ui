import 'package:flutter/material.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';
import 'package:food_ui1/widgets/home_screen_widget/appBar-widget.dart';

import 'package:food_ui1/widgets/home_screen_widget/bottomNavigation-widget.dart';
import 'package:food_ui1/widgets/home_screen_widget/category-widget.dart';
import 'package:food_ui1/widgets/home_screen_widget/categoryName-widget.dart';

import 'package:food_ui1/widgets/home_screen_widget/productGridview-widget.dart';
import 'package:food_ui1/widgets/home_screen_widget/searchBox-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static var routeName = '/hoemScreen';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarWidget(
        height: height,
        width: width,
        context: context,
        appBar: AppBar(),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu(height, width),
            SearchBox(height: height, width: width),
            CategoryName(height: height, width: width),
            const Category(),
            const SizedBox(height: 20),
            ProductGridView(height: height, width: width),
            if (customThemeProvidr.currentTheme == ThemeMode.light)
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: Divider(
                  height: 1,
                  color: const Color(0xFFb7b9b8).withOpacity(0.3),
                  thickness: 1,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
