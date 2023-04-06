import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../config/colors_file.dart';
import '../config/textstyle.dart';

class MyTogglebutton extends StatelessWidget {
  double weidth;
  double heidth;
  String text1;
  String text2;
  MyTogglebutton(
      {required this.text1,
      required this.text2,
      required this.heidth,
      required this.weidth,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ToggleButtons(
          renderBorder: false,
          // ignore: sort_child_properties_last
          constraints: BoxConstraints(minWidth: weidth),
          children: [
            Container(
              width: weidth,
              height: heidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: buttoncolor,
              ),
              child: Center(
                  child: Text(text1,
                      style: detailText16.copyWith(
                          fontWeight: FontWeight.w700, color: purewhite))),
            ),
            Container(
              width: weidth,
              height: heidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: primaryTextColor,
              ),
              child: Center(
                  child: Text(text2,
                      style: detailText16.copyWith(
                          fontWeight: FontWeight.w700, color: purewhite))),
            ),
          ],
          isSelected: const [
            true,
            false
          ]),
    );
  }
}
