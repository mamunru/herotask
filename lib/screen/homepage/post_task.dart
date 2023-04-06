import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/widgets/header.dart';

import '../../config/demodata.dart';

class PostTask extends StatelessWidget {
  const PostTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header Section
            Header(
                title: 'Post a Task',
                mainicon: FontAwesomeIcons.bell,
                secondicon: FontAwesomeIcons.circleQuestion),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 32,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 196, 196, 196),
              child: Center(
                  child: Text(
                'Select tasks you need done from below',
                style: detailText16.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w400),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              //color: Colors.red,
              child: GridView.builder(
                  itemCount: homepagedata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width <= 400.0 ? 3 : 4,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio:
                          MediaQuery.of(context).size.width <= 400.0 ? 0.7 : 1),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (homepagedata[index]['route'].toString().length >
                            2) {
                          Get.toNamed(homepagedata[index]['route']);
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: primaryTextColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Image.asset(
                                  'assets/images/${homepagedata[index]['icon']}'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            homepagedata[index]['title'],
                            style: detailText16,
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
