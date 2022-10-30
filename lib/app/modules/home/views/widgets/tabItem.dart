import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koberorder/util/colour.dart';

Widget tabItem({
  required String title,
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
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: FaIcon(
                FontAwesomeIcons.eyeLowVision,
                color: AppColour.APPBAR_HEADER_COL0R,
              )),
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
