import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:koberorder/app/modules/coupon/views/coupon_view.dart';
import '../../../../../util/colour.dart';

Widget itemKupon() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: InkWell(
      onTap: () => Get.to(const CouponView()),
      child: Stack(
        children: [
          Container(
            height: 110.0,
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Nikmati promo terbaik dari Kober Mie",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 80.0,
            decoration: const BoxDecoration(
              color: AppColour.APPBAR_HEADER_COL0R,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  "Dapatkan undian berhadiah dengan mengumpulkan poin kober sebanyak mungkin",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
