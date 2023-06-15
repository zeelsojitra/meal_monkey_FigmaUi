import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final hintText;
  final controller;
  final keyBoardTyp;
  final maxLength;
  final bool? obscureText;
  final prefixIcon;
  final suffixIcon;

  const CommonTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.keyBoardTyp,
      this.maxLength,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyBoardTyp,
        maxLength: maxLength,
        obscureText: obscureText!,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey.shade300,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
