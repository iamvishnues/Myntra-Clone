import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.black26)),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Center(child: Text("Female")),
              ),
            ),
          ),
          VerticalDivider(
            width: 4,
            color: Colors.black,
          ),
          Flexible(
            flex: 1,
            child: InkWell(
                onTap: () {},
                child: Container(child: Center(child: Text("Male")))),
          )
        ],
      ),
    );
  }
}
