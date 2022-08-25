import 'package:flutter/material.dart';
import '../utilities/colors.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key, required this.icon, required this.ontap})
      : super(key: key);

  final IconData icon;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 34,
          width: 34,
          decoration: const BoxDecoration(
              color: brandColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Icon(icon, size: 26, color: Colors.white)),
    );
  }
}
