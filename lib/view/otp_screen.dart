import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:meal_monkey/view/welcom_screen.dart';

class otp_Screen extends StatefulWidget {
  const otp_Screen({Key? key}) : super(key: key);

  @override
  State<otp_Screen> createState() => _otp_ScreenState();
}

class _otp_ScreenState extends State<otp_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String _code;
    bool _onEditing = true;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Enter Code",
                style: TextStyle(
                  color: Color(0xff011A51),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter your mobile phone number, we will send\nyou OTP to verify later.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'asserts/image/Group 262.png',
              height: height * 0.15,
              width: width * 0.35,
            ),
            SizedBox(
              height: 50,
            ),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                // showDialog(
                //   context: context,
                //   builder: (context) {
                //     return AlertDialog(
                //       title: Text("Verification Code"),
                //       content: Text('Code entered is $verificationCode'),
                //     );
                //   },
                // );
              }, // end onSubmit
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Resend code in 43 second.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            comman_button(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => welcome(),
                    ));
              },
              text: "Continue",
              color: Color(0xffFB847C),
            ),
          ],
        ),
      ),
    );
  }
}
