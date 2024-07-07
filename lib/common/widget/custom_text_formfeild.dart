import 'package:flutter/material.dart';
import 'package:task_manager_practice/common/extension/context_extension.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Color? fillColor;
  final Widget? prefixIcon;

  final Widget? postfixIcon;
  final int? borderRadious;

  const CustomTextFormField.CustomTextFormField(
      {super.key,
      required this.hintText,
      this.fillColor,
      this.prefixIcon,
      this.postfixIcon,
      this.borderRadious});

  @override
  Widget build(BuildContext context) {
    final theme=context.theme;
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: fillColor?? theme.colorScheme.surfaceTint,
        filled: true,
        hintStyle: theme.textTheme.bodyMedium
      ),
    );
  }
}
