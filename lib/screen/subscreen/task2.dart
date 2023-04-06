import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:herotask/widgets/button.dart';

import '../../config/colors_file.dart';
import '../../config/textstyle.dart';
import '../../controller/taskController.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    TaskDetailsController taskdetailscontroller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'When do you need it done?',
              style: detailText16.copyWith(
                color: lightBlack,
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              textAlign: TextAlign.start,
              //controller: searchCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      print('123');
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: FaIcon(FontAwesomeIcons.calendar)),
                  ),
                  focusColor: purewhite,
                  hintText: 'Select Date',
                  hintStyle: detailText16.copyWith(color: lightGry),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                  fillColor: purewhite,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      //color: Colors.red,
                      color: lightBlack,
                      width: 1.0,
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: lightBlack,
                      width: 1.0,
                      //style: BorderStyle.none,
                    ),
                  )),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 50,
        padding: MediaQuery.of(context).viewInsets,
        child: ButtonWidget(
          title: 'Continue',
          ontap: () {
            taskdetailscontroller.onchangeindex();
          },
          showicon: true,
        ),
      ),
    );
  }
}
