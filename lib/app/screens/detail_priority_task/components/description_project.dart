import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class DescriptionProject extends StatelessWidget {
  const DescriptionProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: textSm(textColor, medium),
        ),
        Text(
          "user interface (UI) is anything a user may interact with to use a digital product or service. This includes everything from screens and touchscreens, keyboards, sounds, and even lights. To understand the evolution of UI, however, it’s helpful to learn a bit more about its history and how it has evolved into best practices and a profession.",
          style: textXs(textColor, regular),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}