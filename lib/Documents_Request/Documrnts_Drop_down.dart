import 'package:flutter/material.dart';

const List<String> list = <String>[
  'المستند الاول',
  'المستند الثاني',
  'المستند الثالث',
  'المستند الرابع'
];

void main() => runApp(const Documents_drop_down_Button());

class Documents_drop_down_Button extends StatelessWidget {
  const Documents_drop_down_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: Documrnts_DropDown(),
        ),
      ),
    );
  }
}

class Documrnts_DropDown extends StatefulWidget {
  const Documrnts_DropDown({super.key});

  @override
  State<Documrnts_DropDown> createState() => _Documrnts_DropDownState();
}

class _Documrnts_DropDownState extends State<Documrnts_DropDown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
