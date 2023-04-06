import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/route_name.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/controller/taskController.dart';
import 'package:herotask/screen/subscreen/task2.dart';
import 'package:herotask/screen/subscreen/task3.dart';

import '../../widgets/header.dart';
import '../subscreen/task1.dart';

class TaskDetailsScreen extends StatelessWidget {
  TaskDetailsScreen({super.key});

  List taskList = [Task1(), Task2(), Task3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<TaskDetailsController>(builder: (taskdetailscontroller) {
        return SafeArea(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'Post a Task',
                mainicon: Icons.delete_outline_outlined,
                onback: true,
                mainfunction: () {
                  Get.offAndToNamed(RoutesName.homepage);
                },
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                  height: 41,
                  width: MediaQuery.of(context).size.width,
                  color: purewhite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: detailbutton(
                              title: 'Details',
                              number: '1',
                              ontap: () {
                                taskdetailscontroller.updateindex(0);
                              })),
                      FaIcon(Icons.horizontal_rule),
                      Expanded(
                          child: detailbutton(
                              title: 'Due Date',
                              number: '2',
                              ontap: () {
                                taskdetailscontroller.updateindex(1);
                              })),
                      FaIcon(Icons.horizontal_rule),
                      Expanded(
                          child: detailbutton(
                              title: 'Budget',
                              number: '3',
                              ontap: () {
                                taskdetailscontroller.updateindex(2);
                              }))
                    ],
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20, vertical: 23),
                child: taskList[taskdetailscontroller.taskindex],
              ))
            ],
          ),
        ));
      }),
    );
  }

  Widget detailbutton(
      {required String title,
      required String number,
      required VoidCallback ontap}) {
    return GetBuilder<TaskDetailsController>(builder: (taskdetailscontroller) {
      return InkWell(
        onTap: ontap,
        child: Row(
          children: [
            Container(
              height: 27,
              width: 27,
              decoration: BoxDecoration(
                  color:
                      (taskdetailscontroller.taskindex + 1).toString() == number
                          ? primaryTextColor
                          : lightGry,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                number,
                style: detailText16.copyWith(color: Colors.white),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                title,
                style: detailText16.copyWith(
                    color: (taskdetailscontroller.taskindex + 1).toString() ==
                            number
                        ? primaryTextColor
                        : Colors.black),
              ),
            )
          ],
        ),
      );
    });
  }
}
