import 'package:flutter/material.dart';
import 'box_icon.dart';

class Alternative extends StatelessWidget {
  const Alternative({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BoxIcon(image: Image.asset("assets/png/google.png")),
        BoxIcon(
          image: Image.asset("assets/png/facebook.png"),
        ),
        BoxIcon(
          image: Image.asset("assets/png/twitter.png"),
        )
      ],
    );
  }
}