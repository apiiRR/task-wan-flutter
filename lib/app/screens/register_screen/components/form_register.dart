import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/input_field.dart';
import '../../verification_screen/verification_screnn.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({
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
          InputField(size: size, icon: Icons.person_rounded),
          const SizedBox(
            height: 15,
          ),
          InputField(size: size, icon: Icons.email),
          const SizedBox(
            height: 15,
          ),
          InputField(size: size, icon: Icons.lock),
          const SizedBox(
            height: 15,
          ),
          InputField(size: size, icon: Icons.lock),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerificationScreen()));
            },
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                  color: brandColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    "Register",
                    style: textSm(Colors.white, regular),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
