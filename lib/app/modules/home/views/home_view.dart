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

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
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
            icon: const FaIcon(
              FontAwesomeIcons.cartShopping,
              size: 18.0,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : VerticalTabs(
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
                      tabs: [
                        Tab(
                          child: tabItem(title: 'Home'),
                        ),
                        Tab(
                          child: tabItem(title: 'Mie'),
                        ),
                        Tab(
                          child: tabItem(title: 'Sushi'),
                        ),
                        Tab(
                          child: tabItem(title: 'Dimsum'),
                        ),
                        Tab(
                          child: tabItem(title: 'Minum'),
                        ),
                        Tab(
                          child: tabItem(title: 'Minum'),
                        ),
                        Tab(
                          child: tabItem(title: 'Minum'),
                        ),
                      ],
                      contents: [
                        tabsContent('Flutter',
                            'You can change page by scrolling content vertically'),
                        tabsContent('Dart'),
                        tabsContent('Javascript'),
                        tabsContent('NodeJS'),
                        tabsContent('NodeJS'),
                        tabsContent('NodeJS'),
                        tabsContent('NodeJS'),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
