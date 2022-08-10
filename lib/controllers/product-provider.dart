// ignore_for_file: file_names


import 'package:food_ui1/models/product-model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductProvider extends GetxController {
  var counter = 0;
  void addCounter() {
    counter++;

    update();
  }

  List<ProductModel> listProduct = [
    ProductModel(
      name: 'Vog Burger ',
      price: 5.59,
      imageUrl:
          'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=422&q=80',
    ),
    ProductModel(
      name: 'Bog Cheese Burger',
      price: 7.29,
      imageUrl:
          'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
    ),
    ProductModel(
      name: 'Beef Burger',
      price: 9.99,
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80',
    ),
    ProductModel(
      name: 'Vog Patty Burger',
      price: 12.99,
      imageUrl:
          'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
  ];
}
