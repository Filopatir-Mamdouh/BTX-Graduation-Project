import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/pages/students_Affairs/Home/Main_Screen_Home.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/presentation.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return SplashView(
        backgroundColor: color1,
        loadingIndicator: const RefreshProgressIndicator(),
        logo: Image.asset(
          "assets/img/image1.png",
          width: 100,
          height: 100,
        ),
        done: Done(const MainScreenHome()));
  }
}
