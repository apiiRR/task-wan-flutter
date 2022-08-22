import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'input_box.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.12,
            ),
            const Center(
              child: Text(
                "TASK-WAN",
                style: TextStyle(
                    fontFamily: "Righteous", fontSize: 34, color: brandColor),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Management  App",
                style: textBase(const Color(0xFF9A9A9A), medium),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              "Verify Account",
              style: textSm(subHeaderColor, medium),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset("assets/png/verify.png"),
            SizedBox(height: size.height * 0.05),
            Text(
              "Please enter the verification number we send to your email",
              style: textXs(textColor, medium),
              textAlign: TextAlign.center,
            ),
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        InputBox(),
                        InputBox(),
                        InputBox(),
                        InputBox(),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Don’t receive a code?",
                          style: text2Xs(const Color(0xFF9A9A9A), regular),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Resend",
                            style: text2Xs(brandColor, regular),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: brandColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text(
                            "Confirm",
                            style: textSm(Colors.white, regular),
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
