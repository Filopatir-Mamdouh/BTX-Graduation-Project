import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    super.key,
    this.initialValue = "",
    this.maxLines = 1,
  });
  final String initialValue;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
      ),
      maxLines: maxLines,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 10.0,
          ),
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
