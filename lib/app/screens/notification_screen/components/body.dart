import 'package:flutter/material.dart';

import '../../../../data/notification.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/small_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: SizedBox(
            height: 36,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  "Notification",
                  style: textBase(brandColor, semibold),
                ),
                Positioned(
                  left: 0,
                  child: SmallButton(
                      icon: Icons.close_rounded,
                      ontap: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: brandColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notification.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              tileColor: notification[index].status == false
                  ? const Color(0xFFF1F7FE)
                  : Colors.white,
              leading: Image.asset(
                notification[index].icon,
                width: 30,
                height: 30,
              ),
              title: Text(
                notification[index].title,
                style: textXs(headerColor, medium),
              ),
              subtitle: Text(
                notification[index].subtitle,
                style: text2Xs(subHeaderColor, regular),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
