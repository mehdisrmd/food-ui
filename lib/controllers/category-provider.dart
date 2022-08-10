
import 'package:food_ui1/models/category-model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class CategoryProvider   extends GetxController{
  List<CategoryModel> list = [
    CategoryModel(title: 'Burger'),
    CategoryModel(title: 'Pizza'),
    CategoryModel(title: 'Fries'),
    CategoryModel(title: 'Pasta'),
    CategoryModel(title: 'Drink'),
    CategoryModel(title: 'Dessert'),
  ];
}
