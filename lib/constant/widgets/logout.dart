import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/Login&register/Register_responsive.dart';

import '../../Provider/backend/auth.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future logout() async {
      try {
        final result = await ref.read(authProvider).logout();
        debugPrint("good");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => register())));
      } on AppwriteException catch (e) {
        debugPrint(e.message);
      }
    }

    return ElevatedButton(
      onPressed: logout,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 2, color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      child: const Text(
        "تسجيل الخروج",
        style: TextStyle(color: Colors.black, fontSize: 17),
      ),
    );
  }
}
