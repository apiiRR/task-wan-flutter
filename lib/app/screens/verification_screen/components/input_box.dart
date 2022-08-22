import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utilities/colors.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: brandColor, width: 3)),
      ),
      child: Center(
        child: TextFormField(
          decoration: const InputDecoration(border: InputBorder.none),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
