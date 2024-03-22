import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? image;
  final List<Text> line;
  const CardWidget({super.key, this.image, required this.line});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.indigo.withOpacity(0.9),
          borderRadius: BorderRadius.circular(15),
        image: image != null? DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.79), // Set the opacity value (between 0.0 and 1.0)
            BlendMode.dstATop,
          ),
        ) : null
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: line
        ),
      )
    );
  }

}