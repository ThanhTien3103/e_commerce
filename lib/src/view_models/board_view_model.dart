import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DotController extends GetxController {
  Rx<int> currentPage = 0.obs;

  void changePage({required int index}) {
    currentPage.value = index;
  }
}