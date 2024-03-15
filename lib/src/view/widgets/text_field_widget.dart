import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final String holder;
  final String label;
  final Icon suffixIcon;
  final bool isPasswordField;
  const InputTextFieldWidget({
    super.key,
    required this.holder,
    required this.label,
    required this.suffixIcon,
    this.isPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        onChanged: (value) => {},
        obscureText: isPasswordField,
        decoration: InputDecoration(
          prefix: const SizedBox(width: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: suffixIcon,
          ),
          hintText: holder,
          label: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(label),
          ),
        ),
      ),
    );
  }
}