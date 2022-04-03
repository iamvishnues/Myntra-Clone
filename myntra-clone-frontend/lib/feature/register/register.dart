import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntraclone/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:myntraclone/foundation/sp_text_field/sp_text_field.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
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
                  height: 15,
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
