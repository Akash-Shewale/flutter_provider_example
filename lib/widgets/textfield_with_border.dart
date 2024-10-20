import 'package:flutter/material.dart';
class TextFieldWithBorder extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const TextFieldWithBorder({super.key, required this.labelText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(), // Add border here
        labelText: labelText,
      ),
    );
  }
}