import 'package:flutter/material.dart';
import 'package:graduation_project/library/book_model.dart';
import 'package:graduation_project/library/books_table_row.dart';
import 'package:graduation_project/core/app_colors.dart';

import 'package:graduation_project/presentation/provider/books_provider.dart';

import 'package:provider/provider.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final booksProvider = Provider.of<BooksProvider>(context);
    List<BookModel> books = booksProvider.books;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "الكتب الحالية",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(2),
                        2: FlexColumnWidth(2),
                        3: FlexColumnWidth(2),
                        4: FlexColumnWidth(2),
                        5: FlexColumnWidth(2),
                      },
                      children: [
                        booksTableRow(
                          isFirstRow: true,
                          book: const BookModel(
                            bookName: "اسم الكتاب",
                            bookAuthor: "المؤلف",
                            bookField: "المجال",
                            bookPagesNumber: "عدد الصفحات",
                            notes: "ملاحظات",
                          ),
                        ),
                        ...List.generate(
                          books.length,
                          (index) => booksTableRow(
                            book: books[index],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
