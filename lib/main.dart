import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/widgets/app.dart';

//import 'package:graduation_project/Provider/backend/auth.dart';
//import 'package:graduation_project/Pages/Login&register/Login_page_responsive.dart';
//import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}
