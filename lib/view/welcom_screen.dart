import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:meal_monkey/common_widget/comman_textfiled_sir.dart';
import 'package:meal_monkey/view/home_screen.dart';

import 'login_screen.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  final passwordd = GlobalKey<FormState>();
  final passwordfiled = TextEditingController();
  final email = TextEditingController();
  bool password = false;
  bool selected = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Color(0xff011A51),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Image.asset(
                  'asserts/image/Group 18386.png',
                  height: hight * 0.2,
                  width: width * 0.3,
                ),
                SizedBox(
                  height: 70,
                ),
                Commen_TextFiled(
                  onChanged: (value) {
                    formkey.currentState!.validate();
                  },
                  validator: (value) {
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);

                    if (emailValid) {
                      return null;
                    } else {
                      return "Please enter valid Email Id";
                    }
                  },
                  labelText: "Email",
                  hintText: "Email",
                ),
                SizedBox(
                  height: 35,
                ),
                Commen_TextFiled(
                  onChanged: (value) {
                    formkey.currentState!.validate();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Name";
                    }
                  },
                  labelText: "Name",
                  hintText: "Name",
                ),
                SizedBox(
                  height: 35,
                ),
                Commen_TextFiled(
                  onChanged: (value) {
                    formkey.currentState!.validate();
                  },
                  validator: (value) {
                    final bool passwordValid = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(value!);

                    if (passwordValid) {
                      return null;
                    } else {
                      return "should contain upper,lower,digit and Special character and min 8 Char..";
                    }
                  },
                  suffixIcon: selected == true
                      ? IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {
                            selected = !selected;
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: () {
                            selected = !selected;
                            print("hello");
                          },
                        ),
                  obscureText: selected,
                  labelText: "Password",
                  hintText: "Password",
                ),
                SizedBox(
                  height: 35,
                ),
                comman_button(
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          insetPadding: EdgeInsets.only(
                              bottom: 250, top: 200, left: 40, right: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "Congratulation, Now you are registered!",
                                  style: TextStyle(
                                    color: Color(0xff011A51),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Image.asset(
                                'asserts/image/Group 265.png',
                                height: hight * 0.1,
                                width: width * 0.7,
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              comman_button(
                                color: Color(0xffFB847C),
                                text: "Start",
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login_screen(),
                                      ));
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  },
                  color: Color(0xff0D3F79),
                  text: "Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
