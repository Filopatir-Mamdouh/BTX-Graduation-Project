import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultCheckBox extends StatefulWidget {
  DefaultCheckBox({super.key, this.value = false});
  bool value;
  @override
  State<DefaultCheckBox> createState() => _DefaultCheckBoxState();
}

class _DefaultCheckBoxState extends State<DefaultCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.value,
      activeColor: Colors.transparent,
      checkColor: Colors.black,
      onChanged: (value) {
        setState(() {
          widget.value = value!;
        });
      },
    );
  }
}
