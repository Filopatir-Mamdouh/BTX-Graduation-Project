// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/presentation.dart';

import 'package:graduation_project/constant/constant.dart';

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
    required this.page,
  }) : super(key: key);
  final Widget page;
  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return SplashView(
      backgroundColor: color1,
      loadingIndicator: const RefreshProgressIndicator(),
      logo: Image.asset(
        "assets/b3.jpeg",
        width: 100,
        height: 100,
      ),
      duration: const Duration(seconds: 5),
      done: Done(page),
    );
  }
}
