import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Logic/auth/authentication.dart';
import '../Pages/Login&register/Register_responsive.dart';
import '../Pages/affairs_main_page/affairs_main.dart';
import '../Provider/backend/auth.dart';
import '../constant/splash.dart';

class AuthChecker extends ConsumerWidget {
  AuthChecker({Key? key}) : super(key: key);

  Future isLoggedIn(context, WidgetRef ref) async {
    //  This is how you can access providers in stateful widgets
    late final Authentication auth = ref.watch(authProvider);
    final user = await ref.read(userProvider.future);
    if (user?.email != null) {
      return auth.route(context, user?.email);
    } else {
      return [false];
    }
  }

//  So here's the thing what we have done
//  if the _isLoggedIn is true, we will go to Home Page
//  if false we will go to Welcome Page
// and if the user is null we will show a Loading screen
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    isLoggedIn(context, ref);
    try {
      return Loading(page: register());
    } catch (e) {
      rethrow;
    }
  }
}
