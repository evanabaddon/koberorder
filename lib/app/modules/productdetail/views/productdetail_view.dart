import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/data/models/produk.dart';
import 'package:koberorder/app/modules/cart/controllers/cart_controller.dart';
import 'package:koberorder/app/modules/cart/views/cart_view.dart';
import 'package:koberorder/util/colour.dart';
import '../controllers/productdetail_controller.dart';

class ProductdetailView extends GetView<ProductdetailController> {
  const ProductdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductdetailController());
    CartController cartC = Get.put(CartController());
    Produk prod = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(prod.name.toUpperCase()),
        actions: [
          IconButton(
            onPressed: () => Get.to(const CartView()),
            icon: const FaIcon(
              FontAwesomeIcons.cartShopping,
              size: 18.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            FadeInImage(
              width: Get.width,
              image: NetworkImage(prod.image == null
                  ? "assets/images/placeholder.jpg"
                  : prod.image!),
              placeholder: const AssetImage("assets/images/placeholder.jpg"),
              imageErrorBuilder: (context, error, stackTrace) {
                return Image.asset('assets/images/placeholder.jpg',
                    fit: BoxFit.cover);
              },
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Container(
                    width: Get.width,
                    height: Get.height,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: AppColour.COLOR_WHITE),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: AppColour.APPBAR_HEADER_COL0R,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    prod.kategoriName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: AppColour.APPBAR_HEADER_COL0R,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            prod.name,
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: AppColour.APPBAR_HEADER_COL0R),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(prod.content),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Rp. ${prod.price.toString()}",
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: AppColour.APPBAR_HEADER_COL0R),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () => {
                            if (cartC.count > 1) {cartC.decrement()}
                          },
                          child: const FaIcon(FontAwesomeIcons.minus),
                        ),
                        Obx(
                          () => SizedBox(
                              width: 20,
                              child:
                                  Center(child: Text(cartC.count.toString()))),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () => cartC.increment(),
                          child: const FaIcon(FontAwesomeIcons.plus),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        icon: const FaIcon(
                          FontAwesomeIcons.cartPlus,
                          size: 16,
                        ),
                        label: const Text("BELI"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(45, 45),
                          backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(50), // <-- Radius
                          ),
                        ),
                        onPressed: () => Get.to(
                          const CartView(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
