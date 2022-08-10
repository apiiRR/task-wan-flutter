import 'package:flutter/material.dart';

class BoxIcon extends StatelessWidget {
  const BoxIcon({Key? key, required this.image}) : super(key: key);

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF006EE9).withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: image,
    );
  }
}
