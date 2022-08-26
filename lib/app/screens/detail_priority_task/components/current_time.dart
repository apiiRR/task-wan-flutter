import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class CurrentTime extends StatelessWidget {
  const CurrentTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              "3 March 2022",
              style: textXs(textColor, regular),
            )
          ],
        )
      ],
    );
  }
}