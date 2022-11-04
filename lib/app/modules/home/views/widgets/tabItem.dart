// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:koberorder/util/colour.dart';

Widget tabItem({
  required String title,
  required String icon,
}) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(bottom: 1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
              border: Border.all(
                width: 1.0,
                color: AppColour.APPBAR_HEADER_COL0R,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.network(icon),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: AppColour.APPBAR_HEADER_COL0R),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}
