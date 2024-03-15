import 'package:e_commerce/src/view_models/login_view_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../src/view_models/board_view_model.dart';

class DependencyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DotController>(() => DotController());
    Get.put(LoginUserViewModel());
  }
}