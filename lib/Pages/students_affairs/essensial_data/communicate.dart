import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
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
                        return Text(model.city,
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
                        return Text(model.address,
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
                        return Text("${model.telephoneHome}",
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
                        return Text("${model.phoneNumber}",
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
                        return Text(model.email,
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
                        return Text(model.fax, style: TextStyle(color: color1));
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
                        return Text(model.apartmentNumber,
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
                        return Text(model.emailBox,
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
                        return Text(model.emailCode,
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

// ignore: avoid_unnecessary_containers
Container communicateScaffold = Container(
  child: const Communicate(),
);
