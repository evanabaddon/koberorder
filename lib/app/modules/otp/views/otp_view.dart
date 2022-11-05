import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:koberorder/app/modules/onboarding/views/onboarding_view.dart';
import 'package:koberorder/util/colour.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColour.COLOR_WHITE,
      appBar: AppBar(
        title: const Text('Verifikasi OTP'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/otp.png",
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Masukkan PIN',
                  style: TextStyle(
                    color: AppColour.APPBAR_HEADER_COL0R,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'PIN digunakan unutk meningkatkan keamanan transaksi',
                  style: TextStyle(
                    color: AppColour.APPBAR_HEADER_COL0R,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: AppColour.APPBAR_HEADER_COL0R,
                    selectedFillColor: AppColour.COLOR_WHITE,
                    selectedColor: AppColour.APPBAR_HEADER_COL0R,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: AppColour.COLOR_WHITE,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                    Get.offAll(const OnboardingView());
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: (context),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "Terjadi masalah? ",
                    style:
                        const TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
                    children: [
                      TextSpan(
                        text: "Hubungi Kami",
                        style: const TextStyle(
                            color: AppColour.APPBAR_HEADER_COL0R,
                            fontWeight: FontWeight.w700),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
