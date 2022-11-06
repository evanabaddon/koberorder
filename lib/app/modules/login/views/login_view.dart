import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:koberorder/util/colour.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColour.COLOR_WHITE,
      appBar: AppBar(
        title: const Text('MASUK'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              width: Get.width,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Masukan nomor telepon',
                    style: TextStyle(
                      color: AppColour.APPBAR_HEADER_COL0R,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: AppColour.APPBAR_HEADER_COL0R,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const Text(
                            '+62',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(fontSize: 18),
                              keyboardType: TextInputType.number,
                              controller: controller.phone.value,
                              cursorColor: AppColour.APPBAR_HEADER_COL0R,
                              decoration: const InputDecoration(
                                hintStyle:
                                    TextStyle(color: AppColour.COLOR_GREY),
                                hintText: "81234567890",
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 16,
                    ),
                    label: const Text("LANJUTKAN"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(Get.width, 45),
                      backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      controller.doLogin();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Dengan masuk, anda telah setuju dengan ",
                      style:
                          const TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
                      children: [
                        TextSpan(
                          text: "Syarat dan Ketentuan",
                          style: const TextStyle(
                              color: AppColour.APPBAR_HEADER_COL0R,
                              fontWeight: FontWeight.w700),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: ' dan'),
                        TextSpan(
                          text: " Kebijakan Privasi",
                          style: const TextStyle(
                              color: AppColour.APPBAR_HEADER_COL0R,
                              fontWeight: FontWeight.w700),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
