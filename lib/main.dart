import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Provider/chat/chat_provider.dart';
import 'Provider/chat/conversations_provider.dart';
//import 'package:graduation_project/Provider/backend/auth.dart';

import 'pages/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
          create: (_) => ChatProvider(),
        ),
        ChangeNotifierProvider<ConversationsProvider>(
          create: (_) => ConversationsProvider(),
        ),
      ],
      child: MaterialApp(
        // ignore: prefer_const_literals_to_create_immutables
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale:
            Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
        debugShowCheckedModeBanner: false,
        home: ChatScreen(subjectName: 'aaa'),
        //AuthChecker(),
      ),
    );
  }
}

// class AuthChecker extends ConsumerWidget {
//   const AuthChecker({Key? key}) : super(key: key);

// //  So here's the thing what we have done
// //  if the _isLoggedIn is true, we will go to Home Page
// //  if false we will go to Welcome Page
// // and if the user is null we will show a Loading screen
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final _isLoggedIn = ref.watch(userLoggedInProvider.state).state;
//     if (_isLoggedIn == true) {
//       //return const HomePage(); // It's asimple basic screen showing the home page with welcome message
//     } else if (_isLoggedIn == false) {
//       return LoginPage(); // It's the intro screen we made
//     }
//     // TODO: Create a Loading Screen
//     return LoginPage(); // It's a plain screen with a circular progress indicator in Center
//   }
// }
