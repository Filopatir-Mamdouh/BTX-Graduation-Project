import 'package:flutter/material.dart';

class DefaultDropDownButton extends StatelessWidget {
  const DefaultDropDownButton(
      {super.key,
      required this.list,
      required this.value,
      required this.onChanged});
  final List<String> list;
  final String? value;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: DropdownButton(
          underline: const SizedBox(),
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          value: value,
          onChanged: (value) {
            onChanged(value!);
          }),
    );
  }
}
