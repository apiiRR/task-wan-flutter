import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/text_styles.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.text, required this.ontap})
      : super(key: key);
  final String text;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: size.width,
        decoration: const BoxDecoration(
            color: brandColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              text,
              style: textSm(Colors.white, regular),
            ),
          ),
        ),
      ),
    );
  }
}
