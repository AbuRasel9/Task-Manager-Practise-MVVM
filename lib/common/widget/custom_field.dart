import 'package:flutter/material.dart';
import 'package:flutter_regex/flutter_regex.dart';

class CustomField extends StatelessWidget {
  final String? validatorText;
  final String hintText;

  const CustomField({
    super.key,
    required TextEditingController passwordController,
    required this.hintText,
    this.validatorText,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter $validatorText";
        }
        return null;
      },
      controller: _passwordController,
      decoration:
          InputDecoration(hintText: hintText, border: OutlineInputBorder()),
    );
  }
}
