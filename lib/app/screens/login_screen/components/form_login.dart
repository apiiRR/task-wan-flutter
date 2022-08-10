import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/input_field.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required GlobalKey<FormState> formkey,
    required this.size,
  })  : _formkey = formkey,
        super(key: key);

  final GlobalKey<FormState> _formkey;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          InputField(size: size, icon: Icons.email),
          const SizedBox(
            height: 15,
          ),
          InputField(size: size, icon: Icons.lock),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: size.width,
              child: Text(
                "Forgot Password",
                textAlign: TextAlign.right,
                style: text2Xs(const Color(0xFF87ADF4), regular),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: size.width,
            decoration: const BoxDecoration(
                color: brandColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  "Login",
                  style: textSm(Colors.white, regular),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}