import 'package:flutter/material.dart';
import '../../../../../util/colour.dart';

Widget poinWidget() {
  return Container(
    height: 30,
    width: 60,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "0",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "Poin",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
