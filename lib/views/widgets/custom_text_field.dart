import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: build_method(),
      ),
    );
  }

  OutlineInputBorder build_method() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    );
  }
}
