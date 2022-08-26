import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/small_button.dart';
import 'current_time.dart';
import 'description_project.dart';
import 'time_left.dart';

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
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Work Out",
                      style: text2Xl(brandColor, bold),
                    )
                  ],
                ),
                SmallButton(
                  icon: Icons.close_rounded,
                  ontap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CurrentTime(),
          const SizedBox(
            height: 10,
          ),
          const TimeLeft(),
          const SizedBox(
            height: 20,
          ),
          const DescriptionProject(),
          const SizedBox(
            height: 15,
          ),
          RoundedButton(
            text: "Finish",
            ontap: () {},
          )
        ],
      ),
    ));
  }
}
