import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile(
      {super.key,
      required this.detailName,
      required this.detailValue,
      this.maxLines = 1});
  final String detailName;
  final String detailValue;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
        left: 20.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              detailName,
              style: TextStyle(
                fontSize: 18.0,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              initialValue: detailValue,
              textAlign: TextAlign.center,
              maxLines: maxLines,
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
