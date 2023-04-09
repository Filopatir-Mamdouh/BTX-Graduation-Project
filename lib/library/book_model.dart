import 'package:equatable/equatable.dart';

class BookModel extends Book {
  const BookModel({
    required super.bookName,
    required super.bookAuthor,
    required super.bookField,
    required super.bookPagesNumber,
    required super.notes,
  });
}

class Book extends Equatable {
  final String bookName;
  final String bookAuthor;
  final String bookField;
  final String bookPagesNumber;
  final String notes;

  const Book({
    required this.bookName,
    required this.bookAuthor,
    required this.bookField,
    required this.bookPagesNumber,
    required this.notes,
  });

  @override
  List<Object?> get props => [
        bookName,
        bookAuthor,
        bookField,
        bookPagesNumber,
        notes,
      ];
}
