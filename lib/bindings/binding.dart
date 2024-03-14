import 'package:get/get.dart';
import '../src/view_models/board_view_model.dart';

class DependencyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DotController>(() => DotController());
  }
}