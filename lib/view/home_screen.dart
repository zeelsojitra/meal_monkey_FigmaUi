import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/comman_button.dart';
import 'package:meal_monkey/view/registration_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
                child: Image.asset(
              'asserts/image/Group 303.png',
              height: hight * 0.2,
              width: width * 0.5,
            )),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Flow",
                style: TextStyle(
                  color: Color(0xff011A51),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Experience the",
              style: TextStyle(
                color: Color(0xff011A51),
                fontSize: 45,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "easier Way",
                  style: TextStyle(
                    color: Color(0xffFF897E),
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "for",
                  style: TextStyle(
                    color: Color(0xff011A51),
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              "transaction!",
              style: TextStyle(
                color: Color(0xff011A51),
                fontSize: 45,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              "Connect your money to your\n friends & brands",
              style: TextStyle(
                color: Color(0xff848484),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration(),
                      ));
                });
              },
              child: comman_button(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration(),
                      ));
                },
                text: "Get Started",
                color: Color(0xffFB847C),
              ),
            )
          ],
        ),
      ),
    );
  }
}
