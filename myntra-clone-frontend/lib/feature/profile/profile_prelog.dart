import 'package:flutter/material.dart';
import 'package:myntraclone/feature/profile/profile_content.dart';
import 'package:myntraclone/foundation/profileitem/profile_item.dart';
import 'package:myntraclone/foundation/theme/colors.dart';

class ProfilePreLog extends StatelessWidget {
  const ProfilePreLog({Key? key}) : super(key: key);
  final double topContainerheight = 190;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerheight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topContainerheight * .58,
                    color: AppColor.topBgcolor,
                  ),
                  Container(
                    height: topContainerheight * .42,
                    color: Colors.white,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  height: 132,
                  width: 132,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        "assets/images/profile.png",
                        color: AppColor.bodyColor1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 22,
                  left: 170,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.btnColor),
                          textStyle: MaterialStateProperty.all(const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600))),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 210,
                          height: 45,
                          child:
                              const Center(child: Text("LOG IN / SIGN UP")))))
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
            color: AppColor.whiteColor,
            child: Column(
              children: const [
                ProfileItem(
                  title: "Orders",
                  subtitle: "Check your order status",
                  assetName: "orders.png",
                  isLast: false,
                ),
                ProfileItem(
                  title: "Help Center",
                  subtitle: "Help regarding your recent purchase",
                  assetName: "customer-care.png",
                  isLast: false,
                ),
                ProfileItem(
                  title: "Wishlist",
                  subtitle: "Your most loved style",
                  assetName: "love.png",
                  isLast: true,
                ),
              ],
            )),
        const SizedBox(
          height: 15,
        ),
        Container(
            color: AppColor.whiteColor,
            child: Column(
              children: const [
                ProfileItem(
                  title: "Scan for cupon",
                  assetName: "qr.png",
                  isLast: false,
                ),
                ProfileItem(
                  title: "Refer and Earn",
                  assetName: "money.png",
                  isLast: true,
                ),
              ],
            )),
        const SizedBox(
          height: 18,
        ),
        Footercontent(),
        const SizedBox(
          height: 50,
        ),
        Text(
          "App version 1.0",
          style: Theme.of(context).textTheme.overline,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
