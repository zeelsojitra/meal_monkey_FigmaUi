import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:meal_monkey/common_widget/comman_textfiled_sir.dart';
import 'package:meal_monkey/common_widget/common_textfield.dart';

import 'forgetpassword_screen.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final formkey = GlobalKey<FormState>();
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                  child: Image.asset(
                'asserts/image/Group 18396.png',
                height: hight * 0.2,
                width: width * 0.33,
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xff011A51),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Set a name for your profile, here's\nthe password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Commen_TextFiled(
                  onChanged: (value) {
                    formkey.currentState!.validate();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Name";
                    }
                  },
                  labelText: "Name",
                  hintText: "ABCD",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Commen_TextFiled(
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
                  labelText: "Password",
                  hintText: "Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      icon: selected == true
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Forgetpassword(),
                            ));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              comman_button(
                ontap: () {
                  if (formkey.currentState!.validate()) {}
                },
                text: "Login",
                color: Color(0xffFB847C),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "Signup",
                      style: TextStyle(
                        color: Color(0xffFB847C),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
