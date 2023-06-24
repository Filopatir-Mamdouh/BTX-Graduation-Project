import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../Provider/backend/apiprovider.dart';

class Personality extends ConsumerWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final Color color1 = HexColor('#3E6BA9');
    final studentModel = ref.watch(studentProvider);
    return studentModel.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (context) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("الاسم ")),
                        Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.name}",
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(
                            child: Text(" الاسم باللغه الانجليزيه ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.englishName ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("كود الطالب ")),
                        Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.code}",
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(
                            child: Expanded(child: Text(" الديانة "))),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.relegion ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" النوع ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.gender ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" الجنسيه ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.nationality ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" تاريخ الميلاد ")),
                        Expanded(
                          child: Center(
                              child: Text('${studentModel.value?.birthDate}',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" محل الميلاد")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.birthPlace ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" الحالة الأجتماعية ")),
                        Expanded(
                          child: Center(
                              child: Text(
                                  studentModel.value?.socialStatus ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" نوع البطاقة ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.idType ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("كود الطالب ")),
                        Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.studentId}",
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("رقم البطاقة ")),
                        Expanded(
                          child: Center(
                              child: Text("${studentModel.value?.nationalId}",
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" تاريخ الصدور ")),
                        Expanded(
                          child: Center(
                              child: Text('${studentModel.value?.publishDate}',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("مكان الصدور ")),
                        Expanded(
                          child: Center(
                              child: Text(
                                  studentModel.value?.publishPlace ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("اسم الأب ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.fatherName ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" اسم الأم ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.motherName ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" حالة القيد ")),
                        Expanded(
                          child: Center(
                              child: Text(studentModel.value?.entryStatus ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" نوع القبول ")),
                        Expanded(
                          child: Center(
                              child: Text(
                                  studentModel.value?.acceptanceType ?? '',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text(" عام القبول ")),
                        Expanded(
                          child: Center(
                              child: Text(
                                  '${studentModel.value?.acceptanceYear}',
                                  style: TextStyle(color: color1))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}

// ignore: avoid_unnecessary_containers
Container personalityScaffold = Container(child: const Personality());
