import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/route_name.dart';
import 'package:herotask/config/textstyle.dart';

import '../widgets/button.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Congratulation!',
                  style: headerText.copyWith(color: primaryTextColor),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              const Center(
                child: Text(
                  'Your task has been posted. ',
                  style: detailText16,
                ),
              ),
              //
              const Center(
                child: Text(
                  'You will be notified after you receive an offer ',
                  style: detailText16,
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              Container(
                height: MediaQuery.of(context).size.width * .8,
                width: MediaQuery.of(context).size.width * .8,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/Offer Accepted@2x.png'))),
                //child: Image.asset(''),
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ButtonWidget(
          title: 'Done',
          ontap: () {
            Get.toNamed(RoutesName.homepage);
          },
        ),
      ),
    );
  }
}
