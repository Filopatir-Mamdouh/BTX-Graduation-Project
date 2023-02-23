import 'package:bt_x/Login&register/LoginPage_class.dart';
import 'package:bt_x/Login&register/MyTextField.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'dart:html';

class register_class extends StatelessWidget {
  const register_class({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "logo2.png",
                    height: 180,
                    width: 180,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.person_add),
                      hint: "الاسم الأول",
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      hint: "الاسم الثاني",
                      inputType: TextInputType.text,
                      isPassword: true,
                      icon: Icon(Icons.person_add),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.credit_card_outlined),
                      hint: "كود الطالب",
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.email),
                      hint: "البريد الالكتروني",
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.phone_android),
                      hint: "رقم الهاتف",
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.password_rounded),
                      hint: "كلمة المرور",
                      inputType: TextInputType.emailAddress,
                      isPassword: true,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 480,
                    child: MyTextField(
                      icon: Icon(Icons.paste_sharp),
                      hint: "تأكيد كلمة المرور",
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "التسجيل",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF3E6BA9),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                            left: 110, right: 110, top: 15, bottom: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("لديك حساب بالفعل؟", style: TextStyle(fontSize: 18)),
                      //TextButton.icon(
                      //onPressed: (){},
                      //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                      //label: Text('Logout', style: TextStyle(color: Colors.black)),)
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage_class()),
                          );
                        },
                        child: Text("سجل الدخول",
                            style: TextStyle(
                                color: Color(0xFF3E6BA9), fontSize: 17)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    height: 25,
                    width: 2000,
                    color: Color(0xFF3E6BA9),
                    child: const Center(
                      child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
