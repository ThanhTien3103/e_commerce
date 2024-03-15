import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class LoginUserViewModel extends GetxController {
  Rx<bool> isRemember = false.obs;
  final Rx<String> _email = ''.obs;
  final Rx<String> _password = ''.obs;
  void markRemember({required bool value}){
    isRemember.value = value;
  }
  void inputChanged({required String label, String newValue = ''}){
    switch (label) {
      case 'Email':
        _email.value = newValue;
        break;
      case 'Password':
        _password.value = newValue;
        break;
      default:
        if (kDebugMode) {
          print(label);
        }
    }
  }
}