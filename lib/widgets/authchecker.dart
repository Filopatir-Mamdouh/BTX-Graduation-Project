import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/register_provider.dart';
import '../Logic/auth/authentication.dart';
import '../Pages/Login&register/Register_responsive.dart';
import '../Provider/backend/auth.dart';
import '../constant/splash.dart';

class AuthChecker extends ConsumerWidget {
  AuthChecker({Key? key}) : super(key: key);

  Future isLoggedIn(context, WidgetRef ref) async {
    //  This is how you can access providers in stateful widgets
    late final Authentication auth = ref.watch(authProvider);
    final user = await ref.read(userProvider.future);
    if (user?.email != null) {
      ref.read(pageProvider).setText(await auth.route(context, user?.email));
    } else {
      ref.read(pageProvider).setText(register());
    }
  }

//  So here's the thing what we have done
//  if the _isLoggedIn is true, we will go to Home Page
//  if false we will go to Welcome Page
// and if the user is null we will show a Loading screen
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    isLoggedIn(context, ref);
    return Consumer(
      builder: (context, ref, child) {
        FlutterNativeSplash.remove();
        return ref.watch(pageProvider).page;
      },
    );
  }
}
