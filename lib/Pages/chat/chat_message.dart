// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ChatMessage extends Equatable {
  final String email;
  final String name;
  final String role;
  final String message;
  final String time;
  const ChatMessage({
    required this.email,
    required this.name,
    required this.role,
    required this.message,
    required this.time,
  });

  @override
  List<Object?> get props => [
        email,
        name,
        role,
        message,
        time,
      ];
}
