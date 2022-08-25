import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/small_button.dart';
import '../../verification_success_screen/verification_success_screen.dart';
import 'input_box.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SmallButton(
                  icon: Icons.arrow_back_rounded,
                  ontap: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 16,
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
              Center(
                child: Text(
                  "Verify Account",
                  style: textSm(subHeaderColor, medium),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Center(child: Image.asset("assets/png/verify.png")),
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
                      RoundedButton(
                        ontap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VerificationSuccessScreen()),
                              (route) => false);
                        },
                        text: "Confirm",
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
