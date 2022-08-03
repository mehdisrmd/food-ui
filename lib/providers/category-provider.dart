// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ui1/models/category-model.dart';


class CategoryProvider with ChangeNotifier {
  List<CategoryModel> list = [
    CategoryModel(title: 'Burger'),
    CategoryModel(title: 'Pizza'),
    CategoryModel(title: 'Fries'),
    CategoryModel(title: 'Pasta'),
    CategoryModel(title: 'Drink'),
    CategoryModel(title: 'Dessert'),
  ];
}
