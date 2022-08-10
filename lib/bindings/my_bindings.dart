import 'package:food_ui1/controllers/category-provider.dart';
import 'package:get/instance_manager.dart';

import 'package:food_ui1/controllers/google-signin-provider.dart';
import 'package:food_ui1/controllers/product-provider.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GooogleSignInProvider>(() => GooogleSignInProvider());
    Get.lazyPut<ProductProvider>(() => ProductProvider());
    Get.lazyPut<CategoryProvider>(() => CategoryProvider());
  }
}
