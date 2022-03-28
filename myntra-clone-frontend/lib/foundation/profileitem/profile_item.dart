import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      required this.title,
      this.subtitle,
      required this.assetName,
      required this.isLast,
      this.onTap})
      : super(key: key);
  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 68,
            child: ListTile(
              leading: SPIcon(
                assetName: assetName,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: subtitle == null ? null : Text(subtitle!),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  CupertinoIcons.chevron_forward,
                  size: 20,
                ),
              ),
            ),
          ),
          isLast ? Container() : Divider()
        ],
      ),
    );
  }
}
