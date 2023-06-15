import 'package:flutter/material.dart';

class Commen_TextFiled extends StatelessWidget {
  final maxLength;
  final keyboardType;
  final bool? obscureText;
  final suffixIcon;
  final prefixIcon;
  final void Function(String)? onChanged;
  final hintText;
  final String? Function(String?)? validator;
  final labelText;

  const Commen_TextFiled(
      {Key? key,
      this.maxLength,
      this.keyboardType,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.labelText,
      this.validator,
      this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLength: maxLength,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: obscureText!,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: labelText,
        prefixIcon: prefixIcon,
        hintText: hintText,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
