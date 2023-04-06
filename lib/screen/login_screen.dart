import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:herotask/config/colors_file.dart';
import 'package:herotask/config/route_name.dart';
import 'package:herotask/config/textstyle.dart';
import 'package:herotask/widgets/button.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Image.asset(
                    'assets/images/LogoSmall@2x.png',
                    width: 154,
                    height: 142,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Bring ',
                    style: headerText,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Heros'.toUpperCase(),
                          style: headerText.copyWith(color: primaryTextColor)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'to do your to-dos',
                  style: headerText,
                ),
                const SizedBox(
                  height: 31,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
                const SizedBox(
                  height: 41,
                ),

                //ontap Button
                ButtonWidget(
                    title: 'Sing in',
                    ontap: () {
                      Get.offAllNamed(RoutesName.homepage);
                    }),

                const SizedBox(
                  height: 61,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Forget Password',
                      style: detailText16.copyWith(color: lightBlack),
                    )),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'New User?  ',
                          style: detailText16.copyWith(color: lightBlack),
                          children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print(
                                        '-------------sing up Press-----------');
                                  },
                                text: 'Sing Up',
                                style:
                                    detailText16.copyWith(color: Colors.black)),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
