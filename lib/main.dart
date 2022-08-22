import 'package:flutter/material.dart';

import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task-Wan',
      theme: ThemeData(fontFamily: 'Poppins', backgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigation(size: size),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Saturday, Feb 20 2022",
                        style: textXs(subHeaderColor, regular),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: brandColor,
                            size: 25,
                          ))
                    ],
                  ),
                ),
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
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            height: size.height,
                            width: 135,
                            margin: EdgeInsets.only(
                                right: 10,
                                left: index == 0 ? size.width * 0.05 : 0),
                            decoration: const BoxDecoration(
                                color: Color(0xFF006EE9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/png/blue_background.png"))),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 3,
                                  top: 3,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 3),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Text(
                                      "10 days",
                                      style: text2Xs(
                                          const Color(0xFF444444), regular),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/png/ui.png",
                                          width: 25,
                                          height: 25,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "UI Design",
                                          style:
                                              textBase(Colors.white, semibold),
                                        )
                                      ]),
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
                                            style:
                                                text2Xs(Colors.white, regular),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const SizedBox(
                                              width: 100,
                                              child: LinearProgressIndicator(
                                                value: 0.8,
                                                backgroundColor:
                                                    Color(0xFF004797),
                                                color: Colors.white,
                                              )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: Text(
                                              "80%",
                                              style: text2Xs(
                                                  Colors.white, regular),
                                              textAlign: TextAlign.right,
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
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
                      itemCount: 5,
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      itemBuilder: (context, index) => Container(
                            width: size.width,
                            child: RadioListTile(
                              value: "",
                              groupValue: "",
                              onChanged: (value) {},
                              title: Text(
                                "Work Out",
                                style: textSm(brandColor, medium),
                              ),
                              toggleable: true,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          )),
                )
              ],
            ),
          ),
        ));
  }
}
