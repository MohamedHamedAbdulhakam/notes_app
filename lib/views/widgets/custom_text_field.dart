import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onchanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required ';
        } else {
          return null;
        }
      },
      cursorColor: kprimarycolor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kprimarycolor),
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
