import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final Icon icon;
  final String title;

  const CategoryCardWidget({super.key, required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    icon.icon,
                    color: Colors.deepOrange,
                  ),
                ),
            ),
            Expanded(
              flex: 1,
                child: Text(title, style: const TextStyle(color: Colors.grey, fontSize: 15),)
            ),
          ],
        ),
      )
    );
  }

}