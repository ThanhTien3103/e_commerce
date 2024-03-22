import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalloonIconWidget extends StatelessWidget {
  final Icon icons;
  final String label;
  final Color color;
  final Function() onPress;
  const BalloonIconWidget({
    super.key,
    required this.icons,
    required this.label,
    required this.onPress,
    this.color = Colors.white54,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: onPress,
          borderRadius: BorderRadius.circular(50),
          child: Icon(
            icons.icon,
            size: 25,
            color: icons.color,
          ),
        ),
      ),
    );
  }

}