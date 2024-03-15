import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BalloonIconWidget extends GetWidget {
  final Icon icons;
  final String label;
  final Function() onPress;
  const BalloonIconWidget({
    super.key,
    required this.icons,
    required this.label,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: const CircleBorder(),
          ),
          child: Icon(
            icons.icon,
            size: 50,
          ),
        ),
      ),
    );
  }

}