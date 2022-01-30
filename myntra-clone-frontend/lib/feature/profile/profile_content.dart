import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/sp_text_button/sp_textbutton.dart';

class Footercontent extends StatelessWidget {
  const Footercontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SPTextbtn(
          text: "FAQ's",
        ),
        SPTextbtn(
          text: "ABOUT US",
        ),
        SPTextbtn(
          text: "TERMS OF USE",
        ),
        SPTextbtn(
          text: "PRIVACY POLICY",
        ),
      ],
    );
  }
}
