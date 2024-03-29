import 'package:e_commerce/src/view/scenes/home_scenes.dart';
import 'package:e_commerce/src/view/widgets/balloon_icon_widget.dart';
import 'package:e_commerce/src/view_models/login_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button_orange_widget.dart';
import '../widgets/text_field_widget.dart';

class LoginScene extends GetWidget<LoginUserViewModel> {
  const LoginScene({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    controller.isLogin.value?
    HomeScenes()
        :
    Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'Sign in with your email and password or continue with social media',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              children: [
                InputTextFieldWidget(holder: 'Enter your mail', label: 'Email', suffixIcon: Icon(Icons.email_outlined)),
                InputTextFieldWidget(holder: 'Enter your password', label: 'Password', suffixIcon: Icon(Icons.lock_clock_outlined), isPasswordField: true),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Obx(() => Checkbox(value: controller.isRemember.value, onChanged: (newValue) {controller.markRemember(value: newValue!);})),
                  const Text('Remember me'),
                  const Spacer(),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            ButtonOrange(title: 'Sign In', onPress: () {
              if(controller.isRemember.value) {
                controller.saveUser();
              }
              controller.login();
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BalloonIconWidget(icons: const Icon(Icons.g_mobiledata), label: 'Google', onPress: () { }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BalloonIconWidget(icons: const Icon(Icons.facebook_outlined), label: 'Facebook', onPress: () { },),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BalloonIconWidget(icons: const Icon(Icons.filter_vintage_rounded), label: 'Vintage', onPress: () { },),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                CupertinoButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    );
  }
}
