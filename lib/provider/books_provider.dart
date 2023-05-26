import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/library/book_model.dart';

class BooksProvider with ChangeNotifier {
  List<BookModel> books = List.generate(
    20,
    (index) => const BookModel(
      bookName: "اسم الكتاب",
      bookAuthor: "المؤلف",
      bookField: "المجال",
      bookPagesNumber: "عدد الصفحات",
      notes: "ملاحظات",
    ),
  );
}
