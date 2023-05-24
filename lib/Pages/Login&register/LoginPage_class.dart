import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Login&register/MyTextField.dart';
import 'package:graduation_project/Pages/Login&register/register_class.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:html';

/*  
In this page user can login to his profile by entering his E-mail and password.
 */

class LoginPage_class extends StatelessWidget {
  TextEditingController emailcontroller = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();
  var defaultText = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        new Container(
          height: 25,
          color: Color(0xFF3E6BA9),
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "logo2.png",
                  height: 240,
                  width: 350,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 480,
                  child: MyTextField(
                    hint: "كلمة المرور",
                    inputType: TextInputType.text,
                    isPassword: true,
                    icon: Icon(Icons.password),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF3E6BA9),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(
                          left: 100, right: 100, top: 15, bottom: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ليس لديك حساب ؟", style: TextStyle(fontSize: 18)),
                    //TextButton.icon(
                    //onPressed: (){},
                    //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                    //label: Text('Logout', style: TextStyle(color: Colors.black)),)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const register_class()),
                        );
                      },
                      child: Text("سجل من هنا",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 3, 0),
                              fontSize: 17)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "المنتدي",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF3E6BA9),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(
                          left: 125, right: 125, top: 15, bottom: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
