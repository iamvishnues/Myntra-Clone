import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.btnColor),
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w600))),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Center(child: Text(text))));
  }
}
