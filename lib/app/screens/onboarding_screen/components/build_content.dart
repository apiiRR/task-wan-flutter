import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildContent extends StatelessWidget {
  const BuildContent(
      {Key? key,
      required this.size,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final Size size;
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 18,
          ),
          Text(
            title,
            style: textBase(Colors.black, medium),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: textSm(textColor, regular),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}