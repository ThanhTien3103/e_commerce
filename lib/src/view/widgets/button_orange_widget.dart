import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonOrange extends StatelessWidget {
  final String title;
  final Function() onPress;
  const ButtonOrange({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: CupertinoButton(
        color: Colors.deepOrange,
        onPressed: onPress,
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}