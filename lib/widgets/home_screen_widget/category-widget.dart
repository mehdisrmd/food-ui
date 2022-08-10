// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ui1/controllers/themes/custon-theme.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'package:food_ui1/controllers/category-provider.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    var categoryProvider = Get.find<CategoryProvider>().list;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02, left: width * 0.05),
      child: SizedBox(
        width: width,
        height: height * 0.05,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryProvider.length,
            itemBuilder: ((context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      active = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                    width: width * 0.25,
                    height: height * 0.05,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        border:
                            customThemeProvidr.currentTheme == ThemeMode.light
                                ? null
                                : Border.all(color: const Color(0xFF16202a)),
                        color: active == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        categoryProvider[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).textTheme.headline6!.color),
                      ),
                    ),
                  ),
                ))),
      ),
    );
  }
}
