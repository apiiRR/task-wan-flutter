import 'package:flutter/material.dart';

import '../../../../data/todo_design.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/small_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<int> selectedValue = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/png/ui_blue.png",
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "UI Design",
                      style: text2Xl(brandColor, bold),
                    )
                  ],
                ),
                SmallButton(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  icon: Icons.close_rounded,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "start",
                    style: textSm(textColor, medium),
                  ),
                  Text(
                    "21 Feb 2022",
                    style: textXs(textColor, regular),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "end",
                    style: textSm(textColor, medium),
                  ),
                  Text(
                    "3 March 2022",
                    style: textXs(textColor, regular),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 96,
                decoration: const BoxDecoration(
                    color: brandColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      style: text3Xl(Colors.white, bold),
                    ),
                    Text(
                      "months",
                      style: textSm(Colors.white, medium),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: 10,
              child: const Divider(
                color: Color(0xFF9CCAFE),
                thickness: 3,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 96,
                decoration: const BoxDecoration(
                    color: brandColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "12",
                      style: text3Xl(Colors.white, bold),
                    ),
                    Text(
                      "days",
                      style: textSm(Colors.white, medium),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: 10,
              child: const Divider(
                color: Color(0xFF9CCAFE),
                thickness: 3,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 96,
                decoration: const BoxDecoration(
                    color: brandColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "18",
                      style: text3Xl(Colors.white, bold),
                    ),
                    Text(
                      "hours",
                      style: textSm(Colors.white, medium),
                    )
                  ],
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: textSm(textColor, medium),
              ),
              Text(
                "user interface (UI) is anything a user may interact with to use a digital product or service. This includes everything from screens and touchscreens, keyboards, sounds, and even lights. To understand the evolution of UI, however, it’s helpful to learn a bit more about its history and how it has evolved into best practices and a profession.",
                style: textXs(textColor, regular),
                textAlign: TextAlign.justify,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress",
                style: textSm(textColor, medium),
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xFFA9A2A2),
                      color: brandColor,
                      value: 0.8,
                      minHeight: 20,
                    ),
                  ),
                  Positioned(
                      child: Center(
                    child: Text(
                      "80%",
                      style: text2Xs(Colors.white, medium),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "To do list",
                style: textSm(textColor, medium),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: todoDesign.length,
                  itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: const Color(0xFF006EE9).withOpacity(0.06)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 1)),
                          ]),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            todoDesign[index],
                            style: textSm(
                                selectedValue.contains(index)
                                    ? brandColor
                                    : textColor,
                                medium),
                          ),
                          IconButton(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  if (selectedValue.contains(index)) {
                                    selectedValue.remove(index);
                                  } else {
                                    selectedValue.add(index);
                                  }
                                });
                              },
                              icon: selectedValue.contains(index)
                                  ? const Icon(
                                      Icons.radio_button_checked_rounded,
                                      color: brandColor,
                                    )
                                  : const Icon(
                                      Icons.radio_button_off_rounded,
                                      color: brandColor,
                                    ))
                        ],
                      ))),
            ],
          )
        ],
      ),
    ));
  }
}
