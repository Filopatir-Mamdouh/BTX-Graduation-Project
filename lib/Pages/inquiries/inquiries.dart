import 'package:flutter/material.dart';
import 'package:graduation_project/core/default_button.dart';
import 'package:graduation_project/core/default_text_form_field.dart';
import 'package:graduation_project/provider/inquiries_provider.dart';

import 'package:provider/provider.dart';

class Inquiries_Screen extends StatelessWidget {
  const Inquiries_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final studentAffairsProvider = Provider.of<Inquiries_Provider>(context);
    List<String> studentAffairsStaff =
        studentAffairsProvider.studentAffairsStaff;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.12,
              vertical: MediaQuery.of(context).size.width * 0.07,
            ),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "شئون الطلاب",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "مرحبا بك إن أردت أن تستفسر عن شيء فلا تتردد بمراسلتنا عبر التطبيق",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const DefaultTextFormField(
                  maxLines: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                DefaultButton(
                  text: "أرسل إستفسارك",
                  backgroundcolor: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  "رد أخر إستفسار",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const DefaultTextFormField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const DefaultTextFormField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Divider(
                  thickness: 2.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "موظفي شئون الطلاب",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      ...List.generate(
                        studentAffairsStaff.length,
                        (index) => Text(
                          "${index + 1}- ${studentAffairsStaff[index]}",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
