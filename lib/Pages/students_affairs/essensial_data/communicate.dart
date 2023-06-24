import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/backend/apiprovider.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';

class Communicate extends ConsumerWidget {
  const Communicate({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final Color color1 = HexColor('#3E6BA9');
    final studentModel = ref.watch(studentProvider);
    return studentModel.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (context) => Scaffold(
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text("المدينة ")),
                          Expanded(
                              child: Center(
                                  child: Text(studentModel.value?.city ?? '',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text("العنوان ")),
                          Expanded(
                              child: Center(
                                  child: Text(studentModel.value?.address ?? '',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text(" تليفون المنزل")),
                          Expanded(
                              child: Center(
                                  child: Text("",
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text(" المحمول ")),
                          Expanded(
                              child: Center(
                                  child: Text(
                                      "${studentModel.value?.phoneNumber}",
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text(" البريد الأكتروني ")),
                          Expanded(
                              child: Center(
                                  child: Text(studentModel.value?.email ?? '',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text(" فاكس ")),
                          Expanded(
                              child: Center(
                                  child: Text(studentModel.value?.fax ?? '',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text(" رقم العقار ")),
                          Expanded(
                              child: Center(
                                  child: Text(
                                      '${studentModel.value?.apartmentNumber}',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text("صندوق البريد ")),
                          Expanded(
                              child: Center(
                                  child: Text(studentModel.value?.mailBox ?? '',
                                      style: TextStyle(color: color1))))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text("الكود البريدي ")),
                          Expanded(
                              child: Center(
                                  child: Text('${studentModel.value?.mailCode}',
                                      style: TextStyle(color: color1))))
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
