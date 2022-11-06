import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koberorder/app/modules/cart/controllers/cart_controller.dart';
import 'package:koberorder/util/colour.dart';

class itemCart extends StatelessWidget {
  const itemCart({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[200],
          backgroundImage: const NetworkImage(
            "https://i.ibb.co/xgwkhVb/740922.png",
          ),
        ),
        title: const Text("Apple"),
        subtitle: const Text("15 USD"),
        trailing: SizedBox(
          width: 120.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                radius: 12.0,
                child: Center(
                  child: IconButton(
                    onPressed: () => {
                      if (controller.count > 1) {controller.decrement()}
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 9.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Obx(
                  (() => Text(
                        controller.count.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      )),
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColour.APPBAR_HEADER_COL0R,
                radius: 12.0,
                child: Center(
                  child: IconButton(
                    onPressed: () => controller.increment(),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 9.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
