import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/gender_button/gender_button.dart';
import 'package:myntraclone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntraclone/foundation/sp_text_field/sp_text_field.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Complete Regestration",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile Number",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "919480530326",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Center(
                        child: Icon(
                      Icons.verified,
                      size: 18,
                      color: Colors.blue,
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SafeArea(
                    child: SPTextFormField(
                  labelText: "Create Password *",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                )),
                SizedBox(
                  height: 15,
                ),
                SafeArea(
                    child: SPTextFormField(
                  labelText: "Full Name *",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name cannot be empty';
                    }
                    return null;
                  },
                )),
                SizedBox(
                  height: 15,
                ),
                SafeArea(
                    child: SPTextFormField(
                  labelText: "Email *",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    return null;
                  },
                )),
                SizedBox(
                  height: 15,
                ),
                GenderButton(),
                SizedBox(
                  height: 15,
                ),
                SafeArea(
                    child: SPTextFormField(
                  labelText: "Alternate Mobile ",
                  validator: (value) {
                    if (value != null) {
                      String pattern =
                          '/^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}\$';
                      if (!value.contains(pattern)) {
                        return 'Enter a valid phone number';
                      }
                    }
                    return null;
                  },
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "+91 ",
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ),
                )),
                SizedBox(
                  height: 25,
                ),
                SPSolidButton(
                  text: "CREATE ACCOUNT",
                  minusWidth: 0,
                  onPressed: () {
                    if (formKey.currentState != null) {
                      formKey.currentState!.validate();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
