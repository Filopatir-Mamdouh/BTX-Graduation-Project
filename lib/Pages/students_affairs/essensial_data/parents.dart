import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/provider.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../Provider/backend/apiprovider.dart';

class Parents extends ConsumerWidget {
  const Parents({super.key});

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
                        const Expanded(child: Text("الأسم ")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherName ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("الجنسية")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherNationality ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("المدينة")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherCity ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("العنوان")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherAddress ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("الوظيفة")),
                        Expanded(
                            child: Center(
                                child: Text(studentModel.value?.fatherJob ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("حهة العمل")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherJobPlace ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("درجة القرابة")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.degreeOfKinship ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("تليفون العمل")),
                        Expanded(
                            child: Center(
                                child:
                                    Text("", style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("المحمول")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    "${studentModel.value?.fatherPhoneNumber}",
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("البريد الألكتروني")),
                        Expanded(
                            child: Center(
                                child: Text(
                                    studentModel.value?.fatherEmail ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(child: Text("فاكس")),
                        Expanded(
                            child: Center(
                                child: Text(studentModel.value?.fatherFax ?? '',
                                    style: TextStyle(color: color1))))
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}

// ignore: avoid_unnecessary_containers
Container parentsScaffold = Container(child: const Parents());
