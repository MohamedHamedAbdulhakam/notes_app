import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: 'text',
        hintStyle: TextStyle(color: kprimarycolor),
        border: build_method(),
        enabledBorder: build_method(),
        focusedBorder: build_method(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder build_method([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
