import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/pages/home_lecturers/doctor/attendance/main_screen_doctor.dart';
//import 'package:graduation_project/Provider/backend/auth.dart';
//import 'package:graduation_project/Pages/Login&register/Login_page_responsive.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
      debugShowCheckedModeBanner: false,
      home: MainScreenDoctor(),
    );
  }
}

// class AuthChecker extends StatelessWidget {
//   const AuthChecker({Key? key}) : super(key: key);

//   // Future<dynamic> getData() async {
//   //   // Perform asynchronous operations here
//   //   // For example, make an HTTP request or fetch data from a database
//   //   final userprovider = Provider;
//   //   final user = await ref.read(authProvider).getAccount();
//   //   return user;
//   // }

// //  So here's the thing what we have done
// //  if the _isLoggedIn is true, we will go to Home Page
// //  if false we will go to Welcome Page
// // and if the user is null we will show a Loading screen
//   @override
//   Widget build(BuildContext context) {
//     try {
//       if (user != null) {
//         return AffairsMain(); // It's asimple basic screen showing the home page with welcome message
//       } else {
//         return LoginPage(); // It's the intro screen we made
//       }
//       // TODO: Create a Loading Screen
//       return LoginPage(); // It's a plain screen with a circular progress indicator in Center
//     } catch (ex) {
//       debugPrint(ex.toString());
//       return const Scaffold();
//     }
//   }
// }
