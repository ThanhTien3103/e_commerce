import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewViewModel extends GetxController {
  ScrollController scrollController = ScrollController();
  bool _scrollingRight = true;
  var manualScrolling = false.obs;
  Rx<int> currentPage = 0.obs;
  late Timer _scrollTimer;

  void startAutoScroll() {
    _scrollTimer =  Timer.periodic(const Duration(milliseconds: 200), (timer) {
      if (!manualScrolling.value) {
        if (_scrollingRight) {
          if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent) {
            _scrollingRight = false;
          } else {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 5000),
              curve: Curves.linear,
            );
          }
        } else {
          if (scrollController.position.pixels <=
              scrollController.position.minScrollExtent) {
            _scrollingRight = true;
          } else {
            scrollController.animateTo(
              0.0,
              duration: const Duration(milliseconds: 5000),
              curve: Curves.linear,
            );
          }
        }
      }
    });
  }
  @override
  void onClose() {
    _scrollTimer.cancel();
    super.onClose();
  }
  void handleManualScrollStart() {
    manualScrolling.value = true;
    Timer(const Duration(seconds: 3), () {
      manualScrolling.value = false;
    });
  }

}
