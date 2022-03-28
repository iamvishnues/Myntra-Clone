import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton(
      {Key? key, required this.text, this.onPressed, required this.minusWidth})
      : super(key: key);
  final String text;
  final Function()? onPressed;
  final int minusWidth;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.btnColor),
            textStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white))),
        child: Container(
            width: MediaQuery.of(context).size.width - minusWidth,
            height: 45,
            child: Center(
                child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ))));
  }
}
