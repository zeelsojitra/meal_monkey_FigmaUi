import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/common_textfield.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextField(
            hintText: "Name",
          ),
          SizedBox(
            height: 20,
          ),
          CommonTextField(
            hintText: "Email",
          ),
          SizedBox(
            height: 20,
          ),
          CommonTextField(
            maxLength: 10,
            keyBoardTyp: TextInputType.number,
            hintText: "Mobile No",
          ),
          SizedBox(
            height: 20,
          ),
          CommonTextField(
            obscureText: true,
            hintText: "Password",
          ),
        ],
      ),
    );
  }
}
