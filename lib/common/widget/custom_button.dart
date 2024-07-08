import 'package:flutter/material.dart';
import 'package:task_manager_practice/common/extension/context_extension.dart';

class CustomButton extends StatelessWidget {
  final Widget? buttonText;
  final Color? color;
  final VoidCallback onTap;
  const CustomButton({
    super.key,  this.buttonText,  this.color, required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    final theme=context.theme;
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor:color?? theme.colorScheme.primary),

          child:buttonText??  Icon(
            Icons.arrow_forward,
            color: theme.colorScheme.onPrimary,
          ),
        ));
  }
}
