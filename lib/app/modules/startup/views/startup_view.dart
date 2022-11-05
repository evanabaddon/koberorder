import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:koberorder/app/modules/login/views/login_view.dart';
import 'package:koberorder/app/modules/onboarding/views/onboarding_view.dart';
import 'package:koberorder/util/colour.dart';

import '../controllers/startup_controller.dart';

class StartupView extends GetView<StartupController> {
  StartupView({Key? key}) : super(key: key);
  final CarouselController _slideController = CarouselController();
  final int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            carouselController: _slideController,
            options: CarouselOptions(
              height: Get.height,
              viewportFraction: 1,
            ),
            items: [1, 2, 3].map((i) {
              return Builder(builder: (BuildContext context) {
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: Get.height,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/onboard.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Selamat Datang',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: AppColour.APPBAR_HEADER_COL0R),
                          ),
                          Text(
                            'Kober People',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              });
            }).toList(),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.height, 50),
                        backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                      ),
                      onPressed: () => Get.to(const LoginView()),
                      child: const Text("MASUK"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton.icon(
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: AppColour.APPBAR_HEADER_COL0R,
                      ),
                      label: const Text(
                        "Masuk dengan Google",
                        style: TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.height, 50),
                        backgroundColor: AppColour.COLOR_WHITE,
                        side: const BorderSide(
                            color: AppColour.APPBAR_HEADER_COL0R),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      onPressed: () => Get.off(const OnboardingView()),
                      child: const Text(
                        'Lewati',
                        style: TextStyle(color: AppColour.COLOR_WHITE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
