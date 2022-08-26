import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class TimeLeft extends StatelessWidget {
  const TimeLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Container(
          height: 96,
          decoration: const BoxDecoration(
              color: brandColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0",
                style: text3Xl(Colors.white, bold),
              ),
              Text(
                "months",
                style: textSm(Colors.white, medium),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 10,
        child: const Divider(
          color: Color(0xFF9CCAFE),
          thickness: 3,
        ),
      ),
      Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Container(
          height: 96,
          decoration: const BoxDecoration(
              color: brandColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "12",
                style: text3Xl(Colors.white, bold),
              ),
              Text(
                "days",
                style: textSm(Colors.white, medium),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 10,
        child: const Divider(
          color: Color(0xFF9CCAFE),
          thickness: 3,
        ),
      ),
      Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Container(
          height: 96,
          decoration: const BoxDecoration(
              color: brandColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "18",
                style: text3Xl(Colors.white, bold),
              ),
              Text(
                "hours",
                style: textSm(Colors.white, medium),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}