import 'package:e_commerce/src/view_models/cart_view_view_model.dart';
import 'package:e_commerce/src/view_models/detail_model_view.dart';
import 'package:e_commerce/src/view_models/home_view_view_model.dart';
import 'package:e_commerce/src/view_models/login_view_model.dart';
import 'package:get/get.dart';
import '../src/view_models/board_view_model.dart';

class DependencyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DotController>(() => DotController());
    Get.put(LoginUserViewModel());
    Get.put(HomeViewViewModel());
    Get.put(DetailViewModel());
    Get.put(CartViewViewModel());
  }
}