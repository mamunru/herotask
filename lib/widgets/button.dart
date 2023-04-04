import 'package:flutter/material.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';

class ButtonWidget extends StatelessWidget {
  VoidCallback ontap;
  String title;
  ButtonWidget({required this.title, required this.ontap, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: PrimaryButtonColor),
          height: 50,
          child: Center(
            child: Text(
              title,
              style: detailText16.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
