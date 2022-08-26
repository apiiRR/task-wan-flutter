import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/png/ui_blue.png",
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "UI Design",
          style: text2Xl(brandColor, bold),
        )
      ],
    );
  }
}