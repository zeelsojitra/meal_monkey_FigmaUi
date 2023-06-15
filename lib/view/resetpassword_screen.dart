import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:meal_monkey/common_widget/comman_textfiled_sir.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formkey = GlobalKey<FormState>();
  bool selected = true;
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.keyboard_backspace_outlined)),
              Center(
                  child: Image.asset(
                'asserts/image/Group 18364.png',
                height: hight * 0.2,
                width: width * 0.33,
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Reset Password",
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
                height: 80,
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
                  hintText: "New Password",
                  labelText: "New Password",
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
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Commen_TextFiled(
                  hintText: "Reset Password",
                  labelText: "Reset Password",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: comman_button(
                  ontap: () {
                    if (formkey.currentState!.validate()) {}
                  },
                  text: "SUBMITING",
                  color: Color(0xffFB847C),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
