// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Communicate extends StatelessWidget {
  const Communicate({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          ),
        ],
        child: Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("المدينة ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.City,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("العنوان ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.Address,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text(" تليفون المنزل")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.TelephoneHome}",
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text(" المحمول ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.PhoneNumber}",
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text(" البريد الأكتروني ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.Email,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text(" فاكس ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.Fax, style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text(" رقم العقار ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.ApartmentNumber,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("صندوق البريد ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.EmailBox,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("الكود البريدي ")),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.EmailCode,
                            style: TextStyle(color: color1));
                      })))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Container Communicate_Scaffold = Container(
  child: const Communicate(),
);
