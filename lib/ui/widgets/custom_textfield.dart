import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  String? Function(String?)? validator;
  CustomTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff8F9BB3),
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffC5CEE0)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffC5CEE0)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffC5CEE0)),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
