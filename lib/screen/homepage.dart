import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/controller/homeController.dart';
import 'package:herotask/screen/homepage/find_word.dart';
import 'package:herotask/screen/homepage/message.dart';
import 'package:herotask/screen/homepage/more.dart';
import 'package:herotask/screen/homepage/mytask.dart';
import 'package:herotask/screen/homepage/post_task.dart';
import 'package:herotask/widgets/button.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List page = [
      PostTask(),
      MyTask(),
      FindWord(),
      MessageScreen(),
      MoreScreen()
    ];
    return GetBuilder<HomeController>(builder: (homecontroller) {
      return Scaffold(
          backgroundColor: backgroudColor,
          body: page[homecontroller.pageindex],
          bottomNavigationBar: BottomNavigationBar(
            //backgroundColor: Colors.white,
            iconSize: 26,

            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: lightBlack,
            selectedItemColor: primaryTextColor,
            //backgroundColor: Colors.red,
            //backgroundColor: Colors.white,
            //elevation: 1.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.fileMedical,
                  size: 26,
                ),
                label: 'Post a Task',
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.fileLines), label: 'My task'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
                  label: 'Find works'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.envelope), label: 'Messages'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.ellipsis), label: 'More'),
            ],
            currentIndex: homecontroller.pageindex,
            onTap: (index) {
              homecontroller.pageChangeIndex(index);
            },
          ));
    });
  }
}
