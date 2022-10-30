import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:koberorder/app/modules/cart/views/cart_view.dart';
import 'package:koberorder/app/modules/search/views/search_view.dart';

import '../controllers/home_controller.dart';

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
        body: Container());
  }
}
