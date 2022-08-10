import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.size, required this.icon})
      : super(key: key);

  final Size size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: const Color(0xFF006EE9).withOpacity(0.1))),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: brandColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
