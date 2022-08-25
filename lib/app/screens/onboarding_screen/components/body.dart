import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import '../../login_screen/login_screen.dart';
import 'build_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              BuildContent(
                size: size,
                image: "assets/png/onboarding_1.png",
                title: "Easy Time Management",
                subtitle:
                    "With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first",
              ),
              BuildContent(
                  size: size,
                  image: "assets/png/onboarding_2.png",
                  title: "Increase Work Effectiveness",
                  subtitle:
                      "Time management and the determination of more important tasks will give your job statistics better and always improve"),
              BuildContent(
                  size: size,
                  image: "assets/png/onboarding_3.png",
                  title: "Reminder Notification",
                  subtitle:
                      "The advantage of this application is that it also provides reminders for you so you don't forget to keep doing your assignments well and according to the time you have set")
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                      spacing: 5,
                      dotColor: Colors.black26,
                      activeDotColor: brandColor,
                      dotWidth: 12,
                      dotHeight: 12),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size.zero, padding: EdgeInsets.zero),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "skip",
                      style: textXs(brandColor, medium),
                    ))
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              height: 50,
              width: size.width,
              child: RoundedButton(
                text: "Get Started",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
