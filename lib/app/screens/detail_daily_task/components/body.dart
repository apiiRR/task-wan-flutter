import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/small_button.dart';

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
                /* Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: brandColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Icon(Icons.close_rounded,
                        size: 26, color: Colors.white)) */
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "start",
                    style: textSm(textColor, medium),
                  ),
                  Text(
                    "21 Feb 2022",
                    style: textXs(textColor, regular),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "end",
                    style: textSm(textColor, medium),
                  ),
                  Text(
                    "21 Feb 2022",
                    style: textXs(textColor, regular),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 110,
              height: 96,
              decoration: const BoxDecoration(
                  color: brandColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "14",
                    style: text3Xl(Colors.white, bold),
                  ),
                  Text(
                    "hours",
                    style: textSm(Colors.white, medium),
                  )
                ],
              ),
            ),
            Container(
              width: 110,
              height: 96,
              decoration: const BoxDecoration(
                  color: brandColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "48",
                    style: text3Xl(Colors.white, bold),
                  ),
                  Text(
                    "minutes",
                    style: textSm(Colors.white, medium),
                  )
                ],
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: textSm(textColor, medium),
              ),
              Text(
                "Routine exercise every morning with sports, either running, or swimming, or jogging, or badminton, futsal, or similar sports. Work out to form a better body and live a healthier life. hopefully all this can be achieved.",
                style: textXs(textColor, regular),
                textAlign: TextAlign.justify,
              )
            ],
          ),
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
