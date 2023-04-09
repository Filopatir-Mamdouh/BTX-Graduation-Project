import 'package:flutter/material.dart';
import 'package:graduation_project/library/book_model.dart';
import 'package:graduation_project/core/app_colors.dart';

TableRow booksTableRow({
  bool isFirstRow = false,
  required BookModel book,
}) =>
    TableRow(
      children: [
        Text(
          "م",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          book.bookName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          book.bookAuthor,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          book.bookField,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          book.bookPagesNumber,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          book.notes,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
