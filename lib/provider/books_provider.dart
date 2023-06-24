import 'package:flutter/material.dart';

import '../pages/library/book_model.dart';

class BooksProvider with ChangeNotifier {
  List<BookModel> books = List.generate(
    5,
    (index) => const BookModel(
      bookName: "اسم الكتاب",
      bookAuthor: "المؤلف",
      bookField: "المجال",
      bookPagesNumber: "عدد الصفحات",
      notes: "ملاحظات",
    ),
  );
}
