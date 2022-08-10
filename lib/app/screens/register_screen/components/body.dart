import 'package:flutter/material.dart';
import 'package:task_wan_flutter/app/widgets/alternative.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'form_register.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.12,
          ),
          const Center(
            child: Text(
              "TASK-WAN",
              style: TextStyle(
                  fontFamily: "Righteous", fontSize: 34, color: brandColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Management  App",
              style: textBase(const Color(0xFF9A9A9A), medium),
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Center(
            child: Text(
              "Create your account",
              style: textSm(subHeaderColor, medium),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          FormRegister(formkey: _formkey, size: size),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            children: [
              const Expanded(
                child: Divider(
                  color: brandColor,
                  thickness: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Or Register With",
                  style: textSm(subHeaderColor, regular),
                ),
              ),
              const Expanded(
                child: Divider(
                  color: brandColor,
                  thickness: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const Alternative(),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
