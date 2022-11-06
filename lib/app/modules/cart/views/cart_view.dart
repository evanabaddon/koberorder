import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:koberorder/util/colour.dart';

import '../controllers/cart_controller.dart';
import 'widgets/item_cart.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('PESANAN'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    itemCart(
                      controller: controller,
                    ),
                    itemCart(
                      controller: controller,
                    ),
                    itemCart(
                      controller: controller,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("SUBTOTAL"),
                        Text("20000"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("DISKON"),
                        Text(
                          "- 20000",
                          style:
                              TextStyle(color: AppColour.APPBAR_HEADER_COL0R),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("PPN"),
                        Text("11%"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "TOTAL",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "20000",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      icon: const FaIcon(
                        FontAwesomeIcons.moneyBill,
                        size: 16,
                      ),
                      label: const Text("LANJUTKAN"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(Get.width, 45),
                        backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50), // <-- Radius
                        ),
                      ),
                      onPressed: () => Get.to(
                        const CartView(),
                      ),
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
