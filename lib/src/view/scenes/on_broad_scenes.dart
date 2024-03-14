import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/board_view_model.dart';




class OnBroadScenes extends GetWidget<DotController> {
  const OnBroadScenes({super.key});

  Container buildDot({required int index}) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: controller.currentPage.value == index ? 20: 6,
      decoration: BoxDecoration(
        color: controller.currentPage.value == index ? Colors.deepOrangeAccent : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: Obx(() =>
           Column (
             children: [
               Container(
                 padding: const EdgeInsets.only(top: 150),
                 alignment: Alignment.center,
                 child: const Text(
                   'TOKOTO',
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 40,
                       color: Colors.deepOrangeAccent
                   ),
                 ),
               ),
               Container(
                 alignment: Alignment.center,
                 child: const Padding(
                   padding: EdgeInsets.only(bottom: 20),
                   child: Text('Welcome to Tokoto. Let\'s shop')
                 ),
               ),
               Expanded(
                   child: Stack(
                     children: [
                       PageView(
                         onPageChanged: (index) => controller.currentPage(index),
                         children: [
                           Image.asset('assets/images/splash_1.png'),
                           Image.asset('assets/images/splash_2.png'),
                           Image.asset('assets/images/splash_3.png'),
                         ],
                       ),
                     ],
                   )
               ),
               Expanded(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     const Spacer(),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: List.generate(3, (index) => buildDot(index: index)),
                     ),
                     const Spacer(),
                     Container(
                       padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                       child: CupertinoButton(
                         color: Colors.deepOrange,
                         onPressed: () {},
                         child: const Text(
                           'Continue',
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                         ),
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
       )
     );
  }
}