import 'package:flutter/material.dart';
import 'package:task_wan_flutter/app/screens/home_screen/home_screen.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                height: 60,
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
              Center(child: Image.asset("assets/png/confirm.png")),
              SizedBox(height: size.height * 0.05),
              Text(
                "Your Account has been Verified Successfully!",
                style: textXs(textColor, medium),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              RoundedButton(
                text: "Go To Dashboard",
                ontap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (route) => false);
                },
              )
            ],
          )),
    );
  }
}
