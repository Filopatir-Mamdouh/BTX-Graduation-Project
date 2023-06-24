import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

class MyTextField extends StatelessWidget {
  final TextInputType inputType;
  final bool isPassword;
  final String hint;
  final Icon icon;
  final TextEditingController controller;
  final bool isAvailable;
  final Function(String)? onChanged;
  final bool? autoValidate;
  final Function(String)? validator;

  const MyTextField(
      {super.key,
      required this.hint,
      required this.inputType,
      required this.isPassword,
      required this.icon,
      required this.controller,
      required this.isAvailable,
      this.onChanged,
      this.autoValidate,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: isPassword,
      controller: controller,
      enabled: isAvailable,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        icon: icon,
        //contentPadding: ,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),

        //  suffixIcon: GestureDetector(on),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 103, 108, 112),
          ),
        ),
      ),
    );
  }
}
