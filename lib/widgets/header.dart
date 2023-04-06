import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/controller/taskController.dart';

class Header extends StatelessWidget {
  String title;
  final IconData mainicon;
  IconData? secondicon;
  bool onback;
  VoidCallback? mainfunction;
  Header(
      {required this.title,
      required this.mainicon,
      this.mainfunction,
      this.secondicon,
      this.onback = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    TaskDetailsController taskdetailscontroller = Get.find();
    return SafeArea(
        child: Container(
      height: 70,
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Center(
              child: Text(
            title,
            style: headerText.copyWith(color: primaryTextColor),
            textAlign: TextAlign.center,
          )),
          Positioned(
              top: 0,
              left: 10,
              child: Visibility(
                  visible: onback && taskdetailscontroller.taskindex > 0,
                  child: InkWell(
                    onTap: () {
                      taskdetailscontroller.backindex();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: primaryTextColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                          child: FaIcon(
                        Icons.arrow_back,
                        size: 22,
                        color: purewhite,
                      )),
                    ),
                  ))),
          Positioned(
              top: 10,
              left: secondicon != null
                  ? MediaQuery.of(context).size.width * .8
                  : MediaQuery.of(context).size.width * .9,
              child: secondicon == null
                  ? Container(
                      // margin: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: mainfunction,
                        child: FaIcon(
                          mainicon,
                          size: 30,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Container(
                          child: FaIcon(
                            mainicon,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FaIcon(
                          secondicon,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ))
        ],
      ),
    ));
  }
}
