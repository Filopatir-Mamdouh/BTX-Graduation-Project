import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/backend/apiprovider.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';

class Student extends ConsumerWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final Color color1 = HexColor('#3E6BA9');
    final studentModel = ref.watch(studentProvider);
    return studentModel.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, ref, child) {
                          return const Text("الاسم ");
                        }))),
                        Expanded(
                          child: Center(
                              child: Consumer(builder: (context, ref, child) {
                            return Text(
                              studentModel.value?.name ?? '',
                              style: TextStyle(color: color1),
                            );
                          })),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return const Text(" الاسم باللغه الانجليزيه ");
                        }))),
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return Text(
                            studentModel.value?.englishName ?? '',
                            style: TextStyle(color: color1),
                          );
                        })))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return const Text("كود الطالب ");
                        }))),
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return Text(
                            '${studentModel.value?.studentId}',
                            style: TextStyle(color: color1),
                          );
                        })))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return const Text("القسم ");
                        }))),
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return Text(
                            studentModel.value?.program ?? '',
                            style: TextStyle(color: color1),
                          );
                        })))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return const Text("الشعبه ");
                        }))),
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return Text(
                            studentModel.value?.depart ?? '',
                            style: TextStyle(color: color1),
                          );
                        })))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Center(
                            child: Consumer(builder: (context, model, child) {
                          return const Text("الايميل الجامعي ");
                        }))),
                        Expanded(child: Center(
                          child: Center(
                              child: Consumer(builder: (context, model, child) {
                            return Text(
                              '',
                              style: TextStyle(color: color1),
                            );
                          })),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}

// ignore: avoid_unnecessary_containers
Container studentscaffold = Container(child: const Student());
