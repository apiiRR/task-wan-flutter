import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int isActive = 1;

  final Color offButton = const Color(0xFFABCEF5);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: 64,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 5,
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 1)),
      ]),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = 1;
              });
            },
            child: SizedBox(
              height: 60,
              width: widget.size.width / 3,
              child: Icon(
                Icons.home_filled,
                color: isActive == 1 ? brandColor : offButton,
                size: 32,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = 2;
              });
            },
            child: SizedBox(
              height: 60,
              width: widget.size.width / 3,
              child: Icon(
                Icons.calendar_month_rounded,
                color: isActive == 2 ? brandColor : offButton,
                size: 32,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = 3;
              });
            },
            child: SizedBox(
              height: 60,
              width: widget.size.width / 3,
              child: Icon(
                Icons.person,
                color: isActive == 3 ? brandColor : offButton,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}