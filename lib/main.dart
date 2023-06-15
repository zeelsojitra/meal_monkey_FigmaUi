import 'package:flutter/material.dart';
import 'package:meal_monkey/view/demo.dart';
import 'package:meal_monkey/view/forgetpassword_screen.dart';
import 'package:meal_monkey/view/login_screen.dart';
import 'package:meal_monkey/view/otp_screen.dart';

import 'package:meal_monkey/view/registration_screen.dart';
import 'package:meal_monkey/view/resetpassword_screen.dart';
import 'package:meal_monkey/view/welcom_screen.dart';

import 'common_widget/comman_textfiled_sir.dart';
import 'view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
