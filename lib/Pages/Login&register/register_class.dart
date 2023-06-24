import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Login&register/LoginPage_class.dart';
import 'package:graduation_project/Pages/Login&register/MyTextField.dart';
import 'package:graduation_project/Provider/backend/auth.dart';
import 'package:graduation_project/Logic/auth/authentication.dart';
import 'package:graduation_project/Provider/register_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/pages/Login&register/Register_responsive.dart';

import '../../Logic/server/get_user.dart';

class register_class extends ConsumerWidget {
  const register_class({super.key});

  @override
  Widget build(BuildContext context, ref) {
    TextEditingController nationalID = TextEditingController();
    TextEditingController userId = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController pass1 = TextEditingController();
    TextEditingController pass2 = TextEditingController();
    TextEditingController controller = TextEditingController();
    late int index;
    late final Authentication auth = ref.watch(authProvider);
    Future<void> onPressedFunction() async {
      if (pass1.text.length >= 8) {
        if (pass1.text == pass2.text) {
          await auth.signUp(email.text, pass1.text, index);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => register()));
        } else {
          ref.read(passProvider).setText('كلمة السر غير مطابقة');
        }
      } else {
        ref.read(passProvider).setText("أدخل كلمة سر أكبر من 8 حروف");
      }
    }

    Future<void> onChanged(param) async {
      if ((userId.text != "") &&
          (nationalID.text.length == 14) &&
          (nationalID.text != "")) {
        debugPrint("${userId.text} + ${nationalID.text}");
        int uid = int.parse(userId.text);
        int nid = int.parse(nationalID.text);
        debugPrint("$uid + $nid");
        GetUser user = GetUser();
        List isUser = await user.isUser(uid, nid);
        debugPrint("$isUser");
        if (isUser.first <= 2) {
          ref.read(isAvailableProvider.notifier).reverse();
          index = isUser.first;
          ref.read(nameProvider).setName(isUser.last);
          ref.read(isOkProvider).isOk();
        } else {
          ref.read(isOkProvider).notOk();
        }
      }
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
          Container(
            height: 25,
            color: const Color(0xFF3E6BA9),
            child: const Center(
                child: Text(
                    "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          )
        ]),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "logo2.png",
                  height: 180,
                  width: 180,
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          icon: const Icon(Icons.credit_card_outlined),
                          hint: "كود المستخدم",
                          inputType: TextInputType.number,
                          isPassword: false,
                          controller: userId,
                          isAvailable: ref.watch(isAvailableProvider)[0],
                          onChanged: onChanged,
                        );
                      },
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          hint: "الرقم القومى",
                          inputType: TextInputType.number,
                          isPassword: false,
                          icon: const Icon(Icons.person_add),
                          controller: nationalID,
                          isAvailable: ref.watch(isAvailableProvider)[0],
                          onChanged: onChanged,
                        );
                      },
                    )),
                Consumer(
                  builder: (context, ref, child) {
                    return Text(
                      ref.watch(isOkProvider).text,
                      style: const TextStyle(color: Colors.red),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          controller: controller,
                          icon: const Icon(Icons.person_add),
                          hint: ref.watch(nameProvider).text,
                          inputType: TextInputType.emailAddress,
                          isPassword: false,
                          isAvailable: false,
                        );
                      },
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          icon: const Icon(Icons.email),
                          hint: "البريد الالكتروني",
                          inputType: TextInputType.emailAddress,
                          isPassword: false,
                          controller: email,
                          isAvailable: ref.watch(isAvailableProvider)[1],
                        );
                      },
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          icon: const Icon(Icons.phone_android),
                          hint: "رقم الهاتف",
                          inputType: TextInputType.emailAddress,
                          isPassword: false,
                          controller: phone,
                          isAvailable: ref.watch(isAvailableProvider)[1],
                        );
                      },
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return MyTextField(
                          icon: const Icon(Icons.password_rounded),
                          hint: "كلمة المرور",
                          inputType: TextInputType.emailAddress,
                          isPassword: true,
                          controller: pass1,
                          isAvailable: ref.watch(isAvailableProvider)[1],
                        );
                      },
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 480,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return Column(
                          children: [
                            MyTextField(
                              icon: const Icon(Icons.paste_sharp),
                              hint: "تأكيد كلمة المرور",
                              inputType: TextInputType.emailAddress,
                              isPassword: true,
                              controller: pass2,
                              isAvailable: ref.watch(isAvailableProvider)[1],
                            ),
                            Text(
                              ref.watch(passProvider).text,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ],
                        );
                      },
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: onPressedFunction,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFF3E6BA9),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.only(
                          left: 110, right: 110, top: 15, bottom: 15),
                    ),
                  ),
                  child: const Text(
                    "التسجيل",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("لديك حساب بالفعل؟",
                        style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPageClass()),
                        );
                      },
                      child: const Text("سجل الدخول",
                          style: TextStyle(
                              color: Color(0xFF3E6BA9), fontSize: 17)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool validateStructure(String value) {
  String pattern = r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{6,}$';
  RegExp regExp = new RegExp(pattern);
  return regExp.hasMatch(value);
}
