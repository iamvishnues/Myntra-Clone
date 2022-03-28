import 'package:flutter/material.dart';
import 'package:myntraclone/feature/login/login_bottomsheet.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Categories Page"),
        // child: SafeArea(child: LoginBottomSheet()),
      ),
    );
  }
}
