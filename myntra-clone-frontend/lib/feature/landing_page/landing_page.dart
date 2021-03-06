import 'package:flutter/material.dart';
import 'package:myntraclone/feature/categories/categories.dart';
import 'package:myntraclone/feature/home_page/home_page.dart';
import 'package:myntraclone/feature/profile/profile.dart';
import 'package:myntraclone/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int current_index = 0;
  List<Widget> pages = [
    const HomePage(),
    const Categories(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (index) {
          setState(() {
            current_index = index;
          });
        },
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SPIcon(
              assetName: "logo-black.png",
              index: 0,
              currentIndex: current_index,
              isSelected: 0 == current_index,
            ),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: SPIcon(
              assetName: "categories.png",
              index: 1,
              currentIndex: current_index,
              isSelected: 1 == current_index,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SPIcon(
              assetName: "profile.png",
              index: 2,
              currentIndex: current_index,
              isSelected: 2 == current_index,
            ),
          ),
        ],
      ),
      body: pages[current_index],
    );
  }
}
