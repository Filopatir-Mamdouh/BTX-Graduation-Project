import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Pages/Login&register/LoginPage_class.dart';
import 'package:graduation_project/Pages/Login&register/MyTextField.dart';
import 'package:graduation_project/Logic/database/user_data.dart';
import 'package:graduation_project/Provider/backend/user_data.dart';
import 'package:graduation_project/Provider/backend/auth.dart';
import 'package:graduation_project/Logic/auth/authentication.dart';

class register_class extends ConsumerWidget {
  const register_class({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserData userData = ref.watch(userDataProvider);
    TextEditingController fName = TextEditingController();
    TextEditingController nationalID = TextEditingController();
    TextEditingController userId = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController controller = TextEditingController();
    late int index;
    String? isOk;
    bool isAvailable = false;

    late final Authentication auth = ref.watch(authProvider);
    Future<void> onPressedFunction() async {
      await auth.signUp(email.text, controller.text, index);
    }

    void onChanged(param) {
      if ((userId.toString() != "") || (nationalID.toString() != "")) {
        int uid = userId.toString() as int;
        int nid = nationalID.toString() as int;
        List lst = userData.isUser(uid, nid) as List;
        if (lst[0]) {
          isAvailable = lst[0];
          index = lst[1];
        } else {
          isOk = "تأكد من الكود و الرقم القومي";
        }
      } else {
        isOk = "أدخل المعلومات الناقصة";
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
                  child: MyTextField(
                    icon: const Icon(Icons.credit_card_outlined),
                    hint: "كود المستخدم",
                    inputType: TextInputType.number,
                    isPassword: false,
                    controller: userId,
                    isAvailable: true,
                    onChanged: onChanged,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    hint: "الرقم القومى",
                    inputType: TextInputType.number,
                    isPassword: true,
                    icon: const Icon(Icons.person_add),
                    controller: nationalID,
                    isAvailable: true,
                    onChanged: onChanged,
                  ),
                ),
                Text(
                  isOk!,
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    controller: fName,
                    icon: const Icon(Icons.person_add),
                    hint: "الإسم الكامل",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    isAvailable: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    icon: const Icon(Icons.email),
                    hint: "البريد الالكتروني",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    controller: email,
                    isAvailable: isAvailable,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    icon: const Icon(Icons.phone_android),
                    hint: "رقم الهاتف",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    controller: phone,
                    isAvailable: isAvailable,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    icon: const Icon(Icons.password_rounded),
                    hint: "كلمة المرور",
                    inputType: TextInputType.emailAddress,
                    isPassword: true,
                    controller: controller,
                    isAvailable: isAvailable,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 480,
                  child: MyTextField(
                    icon: const Icon(Icons.paste_sharp),
                    hint: "تأكيد كلمة المرور",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    controller: controller,
                    isAvailable: isAvailable,
                  ),
                ),
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
                    //TextButton.icon(
                    //onPressed: (){},
                    //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                    //label: Text('Logout', style: TextStyle(color: Colors.black)),)
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
