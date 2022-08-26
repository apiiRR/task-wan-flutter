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
          "Routine exercise every morning with sports, either running, or swimming, or jogging, or badminton, futsal, or similar sports. Work out to form a better body and live a healthier life. hopefully all this can be achieved.",
          style: textXs(textColor, regular),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}