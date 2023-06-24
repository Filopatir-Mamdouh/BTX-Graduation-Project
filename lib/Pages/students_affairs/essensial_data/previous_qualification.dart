import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../Provider/backend/apiprovider.dart';

class PreviousQualification extends ConsumerWidget {
  const PreviousQualification({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final Color color1 = HexColor('#3E6BA9');
    final studentModel = ref.watch(studentProvider);
    return studentModel.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("المؤهل ")),
                      Expanded(
                          child: Center(
                              child: Text(
                                  studentModel.value?.qualification ?? '',
                                  style: TextStyle(color: color1))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("الجهة ")),
                      Expanded(
                          child: Center(
                              child: Text(studentModel.value?.place ?? '',
                                  style: TextStyle(color: color1))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("سنة التخرج ")),
                      Expanded(
                          child: Center(
                              child: Text(
                                  "${studentModel.value?.graduationYear}",
                                  style: TextStyle(color: color1))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("المجموع ")),
                      Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.total}",
                                  style: TextStyle(color: color1))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(child: Text("النسبة ")),
                      Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.percentage}%",
                                  style: TextStyle(color: color1))))
                    ],
                  ),
                ),
              ],
            ));
  }
}

// ignore: avoid_unnecessary_containers
Container previousScaffold = Container(child: const PreviousQualification());
