import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class SPTextbtn extends StatelessWidget {
  const SPTextbtn({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w600,
                  color: AppColor.heading6),
            ),
          ),
        ),
      ),
    );
  }
}
