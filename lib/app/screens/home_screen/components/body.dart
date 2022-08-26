import 'package:flutter/material.dart';

import '../../../../data/daily_task.dart';
import '../../../../data/priority_task.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../detail_daily_task/detail_daily_task.dart';
import '../../detail_priority_task/detail_priority_task.dart';
import '../../notification_screen/notification_screen.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            TopBar(size: size),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "Welcome Phillip",
                style: textXl(headerColor, bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "Have a nice day !",
                style: textBase(subHeaderColor, regular),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "My Priority Task",
                style: textLg(headerColor, semibold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 205,
              child: ListView.builder(
                  itemCount: priorityTask.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailPriorityTask()));
                        },
                        child: Container(
                          height: size.height,
                          width: 135,
                          margin: EdgeInsets.only(
                              right: 10,
                              left: index == 0 ? size.width * 0.05 : 0),
                          decoration: BoxDecoration(
                              color: Color(int.parse(
                                  priorityTask[index]["color"].toString())),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage(priorityTask[index]
                                          ["background_image"]
                                      .toString()))),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 3,
                                top: 3,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    priorityTask[index]["days"].toString(),
                                    style: text2Xs(
                                        const Color(0xFF444444), regular),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          priorityTask[index]["icon"]
                                              .toString(),
                                          width: 25,
                                          height: 25,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Flexible(
                                          child: Text(
                                            priorityTask[index]["title"]
                                                .toString(),
                                            style: textBase(
                                                Colors.white, semibold),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                              Positioned(
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.05),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Progress",
                                          style: text2Xs(Colors.white, regular),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              value: double.parse(
                                                  priorityTask[index]["loading"]
                                                      .toString()),
                                              backgroundColor: Color(int.parse(
                                                  priorityTask[index][
                                                          "progress_background"]
                                                      .toString())),
                                              color: Colors.white,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Text(
                                            priorityTask[index]["progress"]
                                                .toString(),
                                            style:
                                                text2Xs(Colors.white, regular),
                                            textAlign: TextAlign.right,
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      )),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "Daily Task",
                style: textLg(headerColor, semibold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dailyTask.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailDailyTask()));
                            },
                            child: Text(
                              dailyTask[index],
                              style: textSm(
                                  selectedValue.contains(index)
                                      ? brandColor
                                      : textColor,
                                  medium),
                            ),
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
            )
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Saturday, Feb 20 2022",
            style: textXs(subHeaderColor, regular),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const NotificationScreen()));
              },
              icon: const Icon(
                Icons.notifications,
                color: brandColor,
                size: 25,
              ))
        ],
      ),
    );
  }
}
