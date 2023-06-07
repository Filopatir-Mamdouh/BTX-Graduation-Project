import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/core/default_button.dart';
import 'package:graduation_project/core/default_drop_down_button.dart';
import 'package:graduation_project/core/default_text_form_field.dart';
import 'package:graduation_project/provider/document_request_provider.dart';

import 'package:provider/provider.dart';

class DocumentRequestScreen extends StatelessWidget {
  const DocumentRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? document = DocumentRequestProvider().document;
    List<String> documents = DocumentRequestProvider().documents;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DocumentRequestProvider>(
          create: (_) => DocumentRequestProvider(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12,
                vertical: MediaQuery.of(context).size.width * 0.07,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "طلب مستندات",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Text(
                        "المستند",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 117),
                      Container(
                        width: 120,
                        child: Expanded(
                          child: DefaultDropDownButton(
                            list: documents,
                            value: document,
                            onChanged: (value) {
                              DocumentRequestProvider()
                                  .changeDocument(selectedDocument: value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "text",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 130),
                      Container(
                        width: 120,
                        child: const Expanded(
                          child: SizedBox(
                            height: 27.0,
                            child: DefaultTextFormField(
                              initialValue: "لمن يهمه الامر",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  DefaultButton(
                    text: "إرسال الطلب",
                    backgroundcolor: AppColors.primary,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
