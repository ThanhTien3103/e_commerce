import 'package:get/get.dart';

class DetailViewModel extends GetxController {
  var currentColor = 0.obs;
  var currentImage = 0.obs;
  var maxLines = 3.obs;

  void changeCurrentColor(int index) {
    currentColor.value = index;
  }

  void changeCurrentImage(int index) {
    currentImage.value = index;
  }

  void showDetail() {
    maxLines.value = 10;
  }

  void hintDetail() {
    maxLines.value = 3;
  }
}
