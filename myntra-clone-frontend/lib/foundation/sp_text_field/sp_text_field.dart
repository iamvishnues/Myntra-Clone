import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class SPTextFormField extends StatelessWidget {
  const SPTextFormField(
      {Key? key, required this.labelText, this.validator, this.prefixIcon})
      : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColor.captionColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 1.5,
            color: Colors.black54,
          )),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 1,
            color: Colors.redAccent,
          )),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 1,
            color: Colors.redAccent,
          )),
        ),
      ),
    );
  }
}
