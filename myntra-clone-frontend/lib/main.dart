import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntraclone/feature/landing_page/landing_page.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Myntra",
      theme: ThemeData(
        textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 14.5, color: AppColor.heading6, letterSpacing: 0.15),
            bodyText1: TextStyle(color: AppColor.bodyColor1, fontSize: 14),
            caption: TextStyle(fontSize: 11, color: AppColor.captionColor)),
      ),
      home: LandingPage(),
    );
  }
}
