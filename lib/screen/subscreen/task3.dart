import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:herotask/config/route_name.dart';

import '../../config/colors_file.dart';
import '../../config/textstyle.dart';
import '../../controller/taskController.dart';
import '../../widgets/button.dart';
import '../../widgets/togglebutton.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    TaskDetailsController taskdetailscontroller = Get.find();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: MyTogglebutton(
                text1: 'Fixed Rate',
                text2: 'Hourly Rate',
                heidth: 43,
                weidth: 126,
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Text(
              'What is your estimated budget?',
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
                  prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: FaIcon(FontAwesomeIcons.sterlingSign)),
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
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'How many Heros do you need?',
                  style: detailText16.copyWith(
                    color: lightBlack,
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '2',
                    style: detailText16.copyWith(color: primaryTextColor),
                  ),
                ),
                MyTogglebutton(text1: '-', text2: '+', heidth: 30, weidth: 30)
                // ignore: sort_child_properties_last
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Estimated budget: ',
              style: detailText16,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 50,
        padding: MediaQuery.of(context).viewInsets,
        child: ButtonWidget(
          title: 'Post Task',
          ontap: () {
            taskdetailscontroller.onInit();
            Get.offAndToNamed(RoutesName.congratulation);
          },
          showicon: true,
        ),
      ),
    );
  }
}
