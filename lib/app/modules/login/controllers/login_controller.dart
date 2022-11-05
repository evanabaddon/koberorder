import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/otp/views/otp_view.dart';

class LoginController extends GetxController {
  final phone = TextEditingController().obs;
  var otpCode = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
  }

  void doLogin() {
    print(phone.value.text);
    Get.to(const OtpView());
  }
}
