import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/textstyle.dart';

class ButtonWidget extends StatelessWidget {
  VoidCallback ontap;
  String title;
  bool? showicon;
  ButtonWidget(
      {required this.title,
      required this.ontap,
      this.showicon = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: PrimaryButtonColor),
          height: 50,
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: detailText16.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
              Visibility(
                  visible: showicon!,
                  child: const Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: FaIcon(
                        Icons.arrow_forward,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
