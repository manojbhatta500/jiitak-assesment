import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  const CustomField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xffB8B8B8).withOpacity(0.4),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xffB8B8B8).withOpacity(0.4),
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xffB8B8B8).withOpacity(0.4),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
