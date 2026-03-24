import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isObscure;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      style: const TextStyle(
        color: Color(0xFF2A2A2A),
        fontSize: 16,
        fontFamily: "Urbanist",
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xFF5C5C5C),
          fontSize: 14,
          fontFamily: "Urbanist",
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFBDBDBD),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFF5B4FCF),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}