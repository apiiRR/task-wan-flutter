import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class TimeLeft extends StatelessWidget {
  const TimeLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
    ]);
  }
}