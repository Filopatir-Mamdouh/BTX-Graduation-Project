// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Conversation extends Equatable {
  final String subjectName;
  final String lastSenderName;
  final String lastMessage;
  const Conversation({
    required this.subjectName,
    required this.lastSenderName,
    required this.lastMessage,
  });
  @override
  List<Object?> get props => [
        subjectName,
        lastSenderName,
        lastMessage,
      ];
}
