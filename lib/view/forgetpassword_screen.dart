import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:meal_monkey/common_widget/comman_textfiled_sir.dart';
import 'package:meal_monkey/view/resetpassword_screen.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final formkey = GlobalKey<FormState>();
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
                  icon: Icon(Icons.keyboard_backspace)),
              Center(
                  child: Image.asset(
                'asserts/image/Group 18307.png',
                height: hight * 0.2,
                width: width * 0.33,
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Forgot Password",
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
                  "Set a name for your profile, here's,\nthe password",
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
                  hintText: "Abc@gmail.com",
                  labelText: "Email id",
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
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: comman_button(
                  color: Color(0xffFB847C),
                  text: "NEXT",
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      return print("validate");
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
