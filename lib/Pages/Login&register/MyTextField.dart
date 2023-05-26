import 'package:flutter/material.dart';
import 'dart:html';

class MyTextField extends StatelessWidget {
  final TextInputType inputType;
  final bool isPassword;
  final String hint;
  final Icon icon;

  MyTextField({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.isPassword,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        icon: icon,

        //contentPadding: ,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),

        //  suffixIcon: GestureDetector(on),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 103, 108, 112),
          ),
        ),
      ),
    );
  }
}
