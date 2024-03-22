import 'package:e_commerce/src/repository/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class LoginUserViewModel extends GetxController {
  Rx<bool> isRemember = false.obs;
  final Rx<String> _email = ''.obs;
  final Rx<String> _password = ''.obs;
  final Rx<bool> isLogin = false.obs;

  @override
  void onInit() async {
    await loginAuto();
    super.onInit();
  }
  void markRemember({required bool value}){
    isRemember.value = value;
  }
  void saveUser(){
    UserRepository().saveLogin(
        username: _email.value.split('@gmail.com').first,
        password: _password.value,
        email: _email.value
    );

  }
  void logout() {
    UserRepository().logout();
    _email.refresh();
    _password.refresh();
    isLogin.value = false;

  }
  void login() {
    isLogin.value = UserRepository().loginDefault( username: _email.value.split('@gmail.com').first,
        password: _password.value,
        email: _email.value
    );
  }
  Future<void> loginAuto() async {
    isLogin.value = await UserRepository().loginAuto();
  }
  void inputChanged({required String label, required String newValue}){
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