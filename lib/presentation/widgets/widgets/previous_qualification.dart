import 'package:bt_x/presentation/widgets/widgets/details_tile.dart';
import 'package:flutter/material.dart';

class PreviousQualification extends StatelessWidget {
  const PreviousQualification({
    super.key,
    this.qualification = "",
    this.place = "",
    this.graduationYear = "",
    this.total = "",
    this.percentage = "",
  });
  final String qualification;
  final String place;
  final String graduationYear;
  final String total;
  final String percentage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailsTile(
              detailName: "المؤهل",
              detailValue: qualification, //"ثانوي عام رياضة",
            ),
            DetailsTile(
              detailName: "الجهة",
              detailValue: place, //"مدرسة محرم بك الرسمية لغات",
            ),
            DetailsTile(
              detailName: "سنة التخرج",
              detailValue: graduationYear, //"2019",
            ),
            DetailsTile(
              detailName: "المجموع", detailValue: total, //"450",
            ),
            DetailsTile(detailName: "النسبة", detailValue: percentage //"100%",
                ),
          ],
        ),
      ),
    );
  }
}
