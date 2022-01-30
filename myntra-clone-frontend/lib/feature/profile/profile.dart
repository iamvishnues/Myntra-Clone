import 'package:flutter/material.dart';
import 'package:myntraclone/feature/profile/profile_prelog.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffoldBG,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Profile",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        body: const SingleChildScrollView(child: ProfilePreLog()));
  }
}
