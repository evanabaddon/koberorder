import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/colour.dart';

Widget itemKupon() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Stack(
      children: [
        Container(
          height: 80.0,
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
                  fontSize: 8.0,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 50.0,
          decoration: const BoxDecoration(
            color: AppColour.APPBAR_HEADER_COL0R,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Center(
              child: Text(
                "Dapatkan undian berhadiah dengan mengumpulkan poin kober sebanyak mungkin",
                style: TextStyle(
                  fontSize: 8.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
