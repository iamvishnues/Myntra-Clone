import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntraclone/feature/login/model/login_model.dart';
import 'package:myntraclone/feature/register/register.dart';
import 'package:myntraclone/service/network_handler/network_handler.dart';

class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();
  void login() async {
    Get.to(Register());
    LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
    print(loginEditingController.text);
    var response =
        await NetworkHandler.post(loginModelToJson(loginModel), "login");
    var data = json.decode(response);
    if (data["msg"] == 'register') {
      Get.to(Register());
    }
  }
}
