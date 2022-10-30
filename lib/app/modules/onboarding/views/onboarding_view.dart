import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/home/views/home_view.dart';
import 'package:koberorder/app/modules/onboarding/views/widgets/drawerFooter.dart';
import 'package:koberorder/app/modules/onboarding/views/widgets/drawerHeader.dart';
import 'package:koberorder/app/modules/onboarding/views/widgets/drawerItem.dart';
import 'package:koberorder/app/modules/search/views/search_view.dart';
import 'package:koberorder/app/modules/store/views/store_view.dart';
import 'package:koberorder/util/colour.dart';
import 'package:lottie/lottie.dart';
import '../controllers/onboarding_controller.dart';
import 'widgets/itemKupon.dart';
import 'widgets/poinWidget.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColour.COLOR_WHITE,
      appBar: AppBar(
        title: poinWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.percent,
              size: 18.0,
            ),
          ),
          IconButton(
            onPressed: () => Get.to(const SearchView()),
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 18.0,
            ),
          ),
        ],
      ),
      // drawer
      drawer: Drawer(
          child: ListView(
        children: [
          drawerHeader(),
          itemKupon(),
          drawerItem(
            text: "KoberBox",
          ),
          drawerItem(
            text: "Kupon",
          ),
          drawerItem(
            text: "Riwayat Pemesanan",
          ),
          drawerItem(
            text: "Alamat Tersimpan",
          ),
          drawerItem(
            text: "Pusat Bantuan",
          ),
          drawerItem(
            text: "Pengaturan",
          ),
          const Divider(),
          drawerFooter(),
          drawerItem(
            text: "Logout",
          ),
          const Divider(),
          const Center(
            child: Text(
              "Version 1.0",
              style: TextStyle(
                  fontSize: 10.0, color: AppColour.APPBAR_HEADER_COL0R),
            ),
          ),
        ],
      )),
      body: Column(
        children: [
          //welcome
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Selamat Datang di Kober Mie",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Evan!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                const Text(
                  "Temukan menu favoritmu dan order sekarang",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          // image
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/onboard.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: InkWell(
                    onTap: () => Get.to(const StoreView()),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 135,
                              width: 250,
                              decoration: const BoxDecoration(
                                color: AppColour.COLOR_WHITE,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 15,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Kober Ciliwung",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.mapLocationDot,
                                          size: 24,
                                          color: AppColour.APPBAR_HEADER_COL0R,
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      color: AppColour.APPBAR_HEADER_COL0R,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color:
                                                AppColour.APPBAR_HEADER_COL0R,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                16.0,
                                              ),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                right: 8,
                                                left: 8,
                                                top: 4,
                                                bottom: 4),
                                            child: Text(
                                              "2.5Km",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Dari Lokasimu",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 250,
                              decoration: const BoxDecoration(
                                color: AppColour.APPBAR_HEADER_COL0R,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      FaIcon(
                                        FontAwesomeIcons.shop,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Outlet Kober terdekat",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // footer
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                InkWell(
                  onTap: () => Get.to(
                    const HomeView(),
                  ),
                  child: Container(
                    height: 100,
                    color: AppColour.APPBAR_HEADER_COL0R,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "PESAN SEKARANG",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Lottie.asset('assets/lottie/arrow.json',
                                  width: 50, height: 50),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   color: AppColour.APPBAR_HEADER_COL0R.withOpacity(0.8),
                //   child: Padding(
                //     padding: const EdgeInsets.all(20.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text("text"),
                //         Text("text"),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
