import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/controller/taskController.dart';
import 'package:herotask/widgets/togglebutton.dart';

import '../../widgets/button.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    TaskDetailsController taskdetailscontroller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Headline',
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    focusColor: purewhite,
                    hintText: 'eg. I need a cleaner',
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
                height: 27,
              ),
              Text(
                'Description',
                style: detailText16.copyWith(
                  color: lightBlack,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                minLines: 3,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    focusColor: purewhite,
                    hintText: 'eg. Enter Description',
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
                height: 36,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Is it online base job ?',
                    style: detailText16.copyWith(
                      color: lightBlack,
                    ),
                  )),
                  // ignore: sort_child_properties_last
                  MyTogglebutton(
                      text1: 'Yes', text2: 'No', heidth: 43, weidth: 60),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                'Task Location',
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    focusColor: purewhite,
                    hintText: 'Select Location',
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
                height: 27,
              )
            ],
          ),
        )),
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
