import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntraclone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo-big.png",
                    height: 45,
                    width: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.clear, size: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " or ",
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                      )),
                  TextSpan(
                      text: "Signup",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "+91 ",
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                    ),
                    labelText: "Mobile Number*",
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColor.captionColor)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ))),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "By Continuing, I agree to the",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: "Terms of use",
                      style: TextStyle(
                        color: Color(0xfffe416c),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: " & ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Color(0xfffe416c),
                        fontSize: 14,
                      ))
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SPSolidButton(
                text: "CONTINUE",
                minusWidth: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "Having trouble logging in ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: "Get help",
                      style: TextStyle(
                        color: Color(0xfffe416c),
                        fontSize: 14,
                      )),
                ]),
              ),
            ],
          ),
        ));
  }
}
