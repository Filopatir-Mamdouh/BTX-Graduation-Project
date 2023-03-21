import 'package:bt_x/core/app_colors.dart';
import 'package:flutter/material.dart';

class StudentsAttendanceScheduleProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  List<List<bool>> subjectsAttendance = [
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false]
  ];
  List<TableRow> get tableRows => [
        TableRow(
          decoration: BoxDecoration(
            color: AppColors.primary,
          ),
          children: [
            const Text(
              "الكود",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              "الاسم",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[0].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[1].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[2].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[3].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 5",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[4].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    const Text(
                      "مادة 6",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        subjectsAttendance[5].length,
                        (index) => Text(
                          (++index).toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "45464",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  "أحمد محمود",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[0].length,
                    (index) => subjectsAttendance[0][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 0, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 0, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[1].length,
                    (index) => subjectsAttendance[1][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 1, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 1, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[2].length,
                    (index) => subjectsAttendance[2][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 2, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 2, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[3].length,
                    (index) => subjectsAttendance[3][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 3, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 3, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[4].length,
                    (index) => subjectsAttendance[4][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 4, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 4, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: List.generate(
                    subjectsAttendance[5].length,
                    (index) => subjectsAttendance[5][index] == true
                        ? InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 5, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.check,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              changeSubjectAttendance(
                                  firstIndex: 5, secondIndex: index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey)),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ];
  void changeLevel({required String selectedLevel}) {
    level = selectedLevel;
    notifyListeners();
  }

  void changeDepartment({required String selectedDepartment}) {
    department = selectedDepartment;
    notifyListeners();
  }

  void changeDivision({required String selectedDivision}) {
    division = selectedDivision;
    notifyListeners();
  }

  void changeSubjectAttendance(
      {required int firstIndex, required int secondIndex}) {
    if (subjectsAttendance[firstIndex][secondIndex]) {
      subjectsAttendance[firstIndex][secondIndex] = false;
    } else {
      subjectsAttendance[firstIndex][secondIndex] = true;
    }
    notifyListeners();
  }
}
