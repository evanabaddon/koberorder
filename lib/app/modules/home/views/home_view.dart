import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/cart/views/cart_view.dart';
import 'package:koberorder/app/modules/home/views/widgets/tabItem.dart';
import 'package:koberorder/app/modules/search/views/search_view.dart';
import 'package:koberorder/util/colour.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

import '../controllers/home_controller.dart';
import 'widgets/tabcontentWidget.dart';
import 'widgets/totalCart.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return controller.obx(
      (state) => Scaffold(
        appBar: AppBar(
          title: const Text('KOBER MENU'),
          actions: [
            IconButton(
              onPressed: () => Get.to(const SearchView()),
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18.0,
              ),
            ),
            IconButton(
              onPressed: () => Get.to(const CartView()),
              icon: Stack(
                children: const [
                  FaIcon(
                    FontAwesomeIcons.cartShopping,
                    size: 18.0,
                  ),
                  totalCart(),
                ],
              ),
            ),
          ],
        ),
        body: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(
                  color: AppColour.APPBAR_HEADER_COL0R,
                ))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: VerticalTabs(
                        tabsShadowColor: Colors.transparent,
                        tabBackgroundColor: AppColour.COLOR_WHITE,
                        backgroundColor: AppColour.COLOR_WHITE,
                        indicatorColor: AppColour.APPBAR_HEADER_COL0R,
                        selectedTabBackgroundColor: Colors.transparent,
                        indicatorWidth: 2,
                        indicatorSide: IndicatorSide.end,
                        tabsWidth: 80,
                        direction: TextDirection.ltr,
                        contentScrollAxis: Axis.vertical,
                        changePageDuration: const Duration(milliseconds: 500),
                        tabs: controller.kategoriList.map((kat) {
                          return Tab(
                            child: tabItem(title: kat.name, icon: kat.icon!),
                          );
                        }).toList(),
                        contents: controller.kategoriList.map((kat) {
                          var prod = controller.productList
                              .where((p) => p.idKategori == kat.id)
                              .toList();

                          return tabsContent(prod, kat, controller.bannerList);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
        ),
      ),
      onLoading: Container(
        color: AppColour.COLOR_WHITE,
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColour.APPBAR_HEADER_COL0R,
          ),
        ),
      ),
      onError: (error) {
        return Container(
          color: AppColour.COLOR_WHITE,
          child: Center(
            child: Text(error.toString()),
          ),
        );
      },
    );
  }
}
